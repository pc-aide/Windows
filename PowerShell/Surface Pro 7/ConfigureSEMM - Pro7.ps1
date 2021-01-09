#    DDL : https://download.microsoft.com/download/8/2/E/82EEFB07-1AB3-4557-B654-B34D64C9DD94/SEMM_PowerShell.zip
#
#    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#    ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
#    THE POSSIBILITY OF SUCH DAMAGE.
#
#    Copyright (C) Microsoft Corporation. All Rights Reserved.
#
# ConfigureSEMM - <product>.ps1
#
# PURPOSE:
#  Creates the signer provisioning (aka "owner") package and a universal reset package
#  Creates a permission package
#  Applies the created owner and permission packages
#
# PREREQUISITES:
#  1) SurfaceUEFI_Manager_<version>.msi has been installed
#  2) Ownership Certificate signing key has been generated and is accessible
#  3) Surface device with compatible SEMM-enabled UEFI
#
# WARNING:
#  We recommend that you save the PFX file in a safe location.
#  Once you apply a signer provisioning package you will not be able
#  to clear it without the PFX file that you used.
#  There is no way for you to recover your Surface device if you lose this PFX file!
#
#  The certificate in the PFX file may expire depending on how you created it.
#  When it does it will be difficult to generate reset packages.
#  We suggest you generate a universal (for your organization) reset package
#  and save it in a private and secure location in case you need it in the future.

cls

Function New-RegKey {
  param($key)
  
  $key = $key -replace ':',''
  $parts = $key -split '\\'
  
  $tempkey = ''
  $parts | ForEach-Object {
    $tempkey += ($_ + "\")
    if ( (Test-Path "Registry::$tempkey") -eq $false)  {
      New-Item "Registry::$tempkey" | Out-Null
    }
  }
}

$WorkingDirPath = split-path -parent $MyInvocation.MyCommand.Definition
$packageRoot = "$WorkingDirPath\Config"
$certName = "FabrikamSEMMSample.pfx"
$DllVersion = "2.70.139.0"

$certNameOnly = [System.IO.Path]::GetFileNameWithoutExtension($certName)
$ProvisioningPackage = $certNameOnly + "ProvisioningPackage.pkg"
$ResetPackage = $certNameOnly + "ResetPackage.pkg"

if (-not (Test-Path $packageRoot))  { New-Item -ItemType Directory -Force -Path $packageRoot }
Copy-Item "$WorkingDirPath\$certName" $packageRoot

$privateOwnerKey = Join-Path -Path $packageRoot -ChildPath $certName
$ownerPackageName = Join-Path -Path $packageRoot -ChildPath $ProvisioningPackage
$resetPackageName = Join-Path -Path $packageRoot -ChildPath $ResetPackage

# If your PFX file requires a password then it can be set here, otherwise use a blank string.
$password = "1234"

if (!(Test-Path $privateOwnerKey)) {
    Write-Host -ForegroundColor Yellow "You must manually copy your signing key to " $privateOwnerKey
    Write-Host -ForegroundColor Yellow "!!! Make sure you have saved a copy and do not lose this file !!!"
    Exit
}

# Delete previous packages
if (Test-Path $ownerPackageName) {
    Remove-Item -Path $ownerPackageName
}

# Delete previous reset package
if (Test-Path $resetPackageName) {
    Remove-Item -Path $resetPackageName
}

# Load() is the recommended way to load the assembly, but it requires knowing the exact version
# [System.Reflection.Assembly]::LoadWithPartialName("SurfaceUefiManager")
[System.Reflection.Assembly]::Load("SurfaceUefiManager, Version=$DllVersion, Culture=neutral, PublicKeyToken=fc3210b1ec5c11d4")

# You can use the UefiManager to detect the local device version
$Device = [Microsoft.Surface.UefiManager]::CreateFromLocalDevice()
$uefi = $Device
Write-Host "Manufacturer: " $uefi.Manufacturer
Write-Host "SystemFamily: " $uefi.SystemFamily
Write-Host "Model: " $uefi.Model
Write-Host "UEFI Version: " $uefi.UefiVersion
Write-Host ""

# Must run on a Surface device
if ($uefi.SystemFamily -ne "Surface") {
  Write-Host -ForegroundColor Yellow "ERROR: This script only works for Microsoft Surface devices"
  Exit -1
}

# Older versions of UEFI may not support SEMM.
# If that is the case then you will not have a V2 UEFI object returned.
if ($uefi.ConfigurationMechanism -ne [Microsoft.Surface.IUefiConfiguration+ConfigurationMechanismEnum]::V2) {
    Write-Host -ForegroundColor Yellow "Unsupported device: You may need to update to a newer UEFI firmware version."
    Exit -1
}

# The UEFI manager class knows about all currently supported Surface devices.
$uefiManager = New-Object -TypeName Microsoft.Surface.UefiManager
$uefiManager.LoadKnownUefiConfigurations()

# The signer provisioning package is independent of the family and BIOS version,
# as long as it uses the "V2" configuation mechanism for SEMM.
# Search for any appropriate UEFI and use it.
$uefiV2 = $null
foreach ($uefi in $uefiManager.SurfaceUefiConfigurations) {
    if ($uefi.ConfigurationMechanism -eq [Microsoft.Surface.IUefiConfiguration+ConfigurationMechanismEnum]::V2) {
        $uefiV2 = $uefi
        break
    }
}

# Create a signed provisioning package.
# This assumes that the current owner is nobody.
# It can also be this owner in which case this package is redundant.
$identity = [Microsoft.Surface.IUefiConfiguration+Identity]::SignerOwner
$stream = $uefiV2.BuildAndSignSignerProvisioningPackage(
    $privateOwnerKey,
    $password,
    $privateOwnerKey,
    $password,
    $identity
)

# Save the data to a binary file which can later be applied to any Surface device
# using the V2 version.
$signerProvisioningPackage = New-Object System.IO.Filestream($ownerPackageName, [System.IO.FileMode]::CreateNew, [System.IO.FileAccess]::Write)
$stream.CopyTo($signerProvisioningPackage)
$signerProvisioningPackage.Close()

# Device owners will need the last two characters of the thumbprint to accept SEMM ownership.
# For convenience we get the thumbprint here and present to the user.
$pw = ConvertTo-SecureString $password -AsPlainText -Force
$certPrint = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2
$certPrint.Import($privateOwnerKey, $pw, [System.Security.Cryptography.X509Certificates.X509KeyStorageFlags]::DefaultKeySet)
Write-Host "Thumbprint =" $certPrint.Thumbprint
Write-Host ""
Write-Host ""

# Create the universal reset package
$identity = [Microsoft.Surface.IUefiConfiguration+Identity]::SignerOwner
$stream = $uefiV2.BuildAndSignSignerProvisioningResetPackage(
    $privateOwnerKey,
    $password,
    $identity
)

# Save the data to a binary file which can later be applied to any Surface device
# using the V2 version.
$resetPackage = New-Object System.IO.Filestream($resetPackageName, [System.IO.FileMode]::CreateNew, [System.IO.FileAccess]::Write)
$stream.CopyTo($resetPackage)
$resetPackage.Close()


# The permission package is dependent on the specific device and even UEFI version.
# However:
#  1) The UEFI will safely ignore settings IDs that it does not recognize
#  2) Newer versions of UEFI generally add new settings
#  3) IDs have a consistent meaning across all Surface devices
#
# So get the latest versions for each device family.
$surfaceDevices = @{}
foreach ($uefi in $uefiManager.SurfaceUefiConfigurations) {
    # This version of SEMM is V2 so ignore other SEMM versions.
    if ($uefi.ConfigurationMechanism -eq [Microsoft.Surface.IUefiConfiguration+ConfigurationMechanismEnum]::V2) {
        if (-not $surfaceDevices.ContainsKey($uefi.SurfaceUefiFamily)) {
            $surfaceDevices.Add($uefi.SurfaceUefiFamily, $uefi)
        } else {
            $oldUefi = $surfaceDevices.Values[$uefi.SurfaceUefiFamily]
            if ($uefi.SurfaceUefiSettingsVersion -gt $oldUefi.SurfaceUefiSettingsVersion) {
                $surfaceDevices.Values[$uefi.SurfaceUefiFamily] = $uefi
            }
        }
    }
}

# The Lowest Supported Version (LSV) is a 64-bit integer assigned to a permission or settings package.
# (There are two independent LSV values in UEFI: One for permissions, one for settings)
# Whenever a package is sent to UEFI, the UEFI boot process will only allow packages
# with LSV equal to or greater than the current package.
# This is a security feature to prevent a replay attack where somebody tries to re-apply an older package.
#
# The algorithm used by the UEFI Configurator GUI tool is to calculate seconds since the year 2000.
# We will use the same algorithm here.
$year2000 = New-Object -TypeName "System.DateTime" -ArgumentList 2000,1,1
$year2000Utc = $year2000.ToUniversalTime()

$timeDiff = [System.DateTime]::UtcNow - $year2000Utc
$lsv = [System.Convert]::ToInt64($timeDiff.TotalSeconds)

# Configure Permissions
foreach ($uefiV2 IN $surfaceDevices.Values) {
    if ($uefiV2.SurfaceUefiFamily -eq $Device.Model) {
        Write-Host "Configuring permissions"
        Write-Host $Device.Model
        Write-Host "======================="

        # Here we define which "identities" will be allowed to modify which settings
        #   PermissionSignerOwner = The primary SEMM enterprise owner identity
        #   PermissionLocal = The user when booting to the UEFI pre-boot GUI
        #   PermissionSignerUser, PermissionSignerUser1, PermissionSignerUser2 =
        #     Additional user identities created so that the signer owner
        #     can delegate permission control for some settings.
        $ownerOnly = [Microsoft.Surface.IUefiSetting]::PermissionSignerOwner
        $ownerAndLocalUser = ([Microsoft.Surface.IUefiSetting]::PermissionSignerOwner -bor [Microsoft.Surface.IUefiSetting]::PermissionLocal)

        # Make all permissions owner only by default
        foreach ($setting IN $uefiV2.Settings.Values) {
            $setting.ConfiguredPermissionFlags = $ownerOnly
        }

        # 501 = Password
        #  Description:  UEFI System Password
        Write-Host "Setting UEFI System Password entry capability to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[501].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 200 = Secure Boot Keys
        Write-Host "Setting Secure Boot Key configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[200].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 300 = Trusted Platform Module (TPM)
        Write-Host "Setting TPM configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[300].ConfiguredPermissionFlags = $ownerAndLocalUser

        #301 = Docking USB Port
        Write-Host "Setting Docking USB Port configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[301].ConfiguredPermissionFlags = $ownerAndLocalUser
    
        # 302 = Front Camera
        Write-Host "Setting Front Camera configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[302].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 303 = Bluetooth
        Write-Host "Setting Bluetooth configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[303].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 304 = Rear Camera
        Write-Host "Setting Rear Camera configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[304].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 305 = IR Camera
        Write-Host "Setting IR Camera configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[305].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 308 = Wi-Fi and Bluetooth
        Write-Host "Setting Wi-Fi and Bluetooth configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[308].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 310 = Type Cover
        Write-Host "Setting Type Cover configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[310].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 312 = LTE
        Write-Host "Setting LTE configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[312].ConfiguredPermissionFlags = $ownerAndLocalUser
		
		# 316 = SMT (Simultaneous multithreading)
        Write-Host "Setting On-board Audio configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[316].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 317 = Wake on LAN
        Write-Host "Setting On-board Audio configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[317].ConfiguredPermissionFlags = $ownerAndLocalUser
		
		# 318 = Wake on Power
        Write-Host "Setting On-board Audio configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[318].ConfiguredPermissionFlags = $ownerAndLocalUser
        # 320 = On-board Audio
        Write-Host "Setting On-board Audio configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[320].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 330 = Micro SD Card
        Write-Host "Setting On-board Audio configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[330].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 400 = IPv6 for PXE Boot
        Write-Host "Setting IPv6 for PXE Boot configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[400].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 401 = Alternate Boot
        Write-Host "Setting Alternate Boot configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[401].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 402 = Boot Order Lock
        Write-Host "Setting Boot Configuration Lock configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[402].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 403 = USB Boot
        Write-Host "Setting USB Boot configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[403].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 404 = Auto Power On
        Write-Host "Setting Auto Power On configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[404].ConfiguredPermissionFlags = $ownerAndLocalUser

        # 407 = Battery Profile
        Write-Host "Setting Battery Profile configuration to SEMM owner and local user"
        Write-Host ""
        $uefiV2.SettingsById[407].ConfiguredPermissionFlags = $ownerAndLocalUser

        Write-Host ""

        # Create a unique package name based on family and LSV.
        # We will choose a name that can be parsed by later scripts.
        $packageName = $uefiV2.SurfaceUefiFamily + "^Permissions^" + $lsv + ".pkg"
        $fullPackageName = Join-Path -Path $packageRoot -ChildPath $packageName

        # Build and sign the Permission package then save it to a file.
        $permissionPackageStream =  $uefiV2.BuildAndSignPermissionPackage($privateOwnerKey, $password, "", $null, $lsv)
        $permissionPackage = New-Object System.IO.Filestream($fullPackageName, [System.IO.FileMode]::CreateNew, [System.IO.FileAccess]::Write)
        $permissionPackageStream.CopyTo($permissionPackage)
        $permissionPackage.Close()
    }
}

# In this demo we assume that there may be many packages in the directory.
# The logic here will find the packages with the greatest LSV for your family of device.
# How you handle this in your environment is up to you.
$searchPattern =  $Device.Model + "^Permissions^*.pkg"
$fileEntries = [IO.Directory]::GetFiles($packageRoot, $searchPattern)
$maxName = ""
$permissionsFileName = ""
foreach($fileName in $fileEntries) 
{
    $nameOnly = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
    if ($nameOnly -gt $maxName) {
        $permissionsFileName = $fileName
        $maxName = $nameOnly
    }
}

if ($permissionsFileName -ne "") {
    # We found a valid package for this device
    # Every time you try to update a UEFI package that package generates a unique session ID.
    # Here we save that ID in local files can be checked after reboot to see if
    # the UEFI settings session ID matches the most recent one you tried to update.

    # The owner package is the same for all V2 devices
    $ownerFileName = Join-Path -Path $packageRoot -ChildPath $ProvisioningPackage
    $ownerPackageStream = New-Object System.IO.Filestream($ownerFileName, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read)
    $ownerSessionIdValue = $uefi.ApplySignerProvisioningPackage($ownerPackageStream)

    $ownerSessionIdFile = Join-Path -Path $packageRoot -ChildPath "OwnerSessionId.txt"
    $writer = New-Object System.IO.StreamWriter($ownerSessionIdFile)
    $writer.Write($ownerSessionIdValue)
    $writer.Close()

    # Apply the permissions package based on device file
    $permissionPackageStream = New-Object System.IO.Filestream($permissionsFileName, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read)
    $permissionSessionIdValue = $uefi.ApplyPermissionPackage($permissionPackageStream)

    $permissionSessionIdFile = Join-Path -Path $packageRoot -ChildPath "PermissionSessionId.txt"
    $writer = New-Object System.IO.StreamWriter($permissionSessionIdFile)
    $writer.Write($permissionSessionIdValue)
    $writer.Close()
}

# Configure Settings
foreach ($uefiV2 IN $surfaceDevices.Values) {
    if ($uefiV2.SurfaceUefiFamily -eq $Device.Model) {
        Write-Host "Configuring settings"
        Write-Host $Device.Model
        Write-Host "===================="

        # In this demo, we will start by setting every setting to the default factory setting.
        # You may want to start by doing this in your scripts
        # so that every setting gets set to a known state.
        foreach ($setting IN $uefiV2.Settings.Values) {
            $setting.ConfiguredValue = $setting.DefaultValue
        }

        $EnabledValue = "Enabled"
        $DisabledValue = "Disabled"

        # 501 = Password
        #  Description:  UEFI System Password
        #  Default:
        #$uefiV2.SettingsById[501].ConfiguredValue = ""

        # If you want to leave a setting unmodified, set it to $null
        # PowerShell has issues setting things to $null so ClearConfiguredValue()
        # is supplied to do this explicitly.
        # Here is an example of leaving the UEFI administrator password as-is,
        # even after we initially set it to factory default above.
        Write-Host "Leave alone any existing UEFI password, or leave blank if currently blank"
        Write-Host ""
        $uefiV2.SettingsById[501].ClearConfiguredValue()

        # 200 = Secure Boot Keys
        #  Description:  Secure Boot signing keys to enable for EFI applications
        #  Default:  MsPlus3rdParty
        #  Possible: MsOnly, MsPlus3rdParty, None
        $SecureBootKeysSettingsValue = "MsPlus3rdParty"
        Write-Host "Setting Secure Boot to $SecureBootKeysSettingsValue"
        Write-Host ""
        $uefiV2.SettingsById[200].ConfiguredValue = $SecureBootKeysSettingsValue

        # 300 = Trusted Platform Module (TPM)
        #  Description:  TPM device enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting TPM to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[300].ConfiguredValue = $EnabledValue

        #301 = Docking USB Port
        #  Description:  Docking USB Port enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Docking USB Port to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[301].ConfiguredValue = $EnabledValue

        # 302 = Front Camera
        #  Description:  Front Camera enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Front Camera to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[302].ConfiguredValue = $EnabledValue

        # 303 = Bluetooth
        #  Description:  Bluetooth radio enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Bluetooth to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[303].ConfiguredValue = $EnabledValue

        # 304 = Rear Camera
        #  Description:  Rear Camera enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Rear Camera to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[304].ConfiguredValue = $EnabledValue

        # 305 = IR Camera
        #  Description:  InfraRed Camera enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting IR Camera to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[305].ConfiguredValue = $EnabledValue

        # 308 = Wi-Fi and Bluetooth
        #  Description:  Wi-Fi and Bluetooth enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Wi-Fi and Bluetooth to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[308].ConfiguredValue = $EnabledValue

        # 310 = Type Cover
        #  Description:  Surface Type Cover connector
        #  Default:  Enabled
        Write-Host "Setting Surface Type Cover connector to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[310].ConfiguredValue = $EnabledValue

        # 312 = LTE
        #  Description:  LTE modem enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting LTE modem to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[312].ConfiguredValue = $EnabledValue

		# 316 = SMT (Simultaneous multithreading)
        #  Description:  SMT enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting SMT to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[316].ConfiguredValue = $EnabledValue
		
		# 317 = Wake on LAN
        #  Description:  Wake on LAN enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Wake on LAN to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[317].ConfiguredValue = $EnabledValue
		
		# 318 = Wake on Power
        #  Description:  Wake on Power enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Wake on Power to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[318].ConfiguredValue = $EnabledValue
		
        # 320 = On-board Audio
        #  Description:  On-board audio enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting On-board Audio to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[320].ConfiguredValue = $EnabledValue

        # 330 = Micro SD Card
        #  Description:  Micro SD Card enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Micro SD Card to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[330].ConfiguredValue = $EnabledValue

        # 370 = USB Port 1
        #  Description:  Side USB Port (1)
        #  Default:  UsbPortEnabled
        #  Possible: UsbPortEnabled, UsbPortHwDisabled
        $USBPort1SettingsValue = "UsbPortEnabled"
        Write-Host "Setting Side USB Port to $USBPort1SettingsValue"
        Write-Host ""
        $uefiV2.SettingsById[370].ConfiguredValue = $USBPort1SettingsValue

        # 400 = IPv6 for PXE Boot
        #  Description:  Enable IPv6 PXE boot before IPv4 PXE boot
        #  Default:  Enabled
        Write-Host "Setting IPv6 for PXE Boot to $DisabledValue"
        Write-Host ""
        $uefiV2.SettingsById[400].ConfiguredValue = $DisabledValue

        # 401 = Alternate Boot
        #  Description:  Alternate Boot allows users to override the boot order by holding the volume down button when powering up the device
        #  Default:  Enabled
        Write-Host "Setting Alternate Boot to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[401].ConfiguredValue = $EnabledValue

        # 402 = Boot Order Lock
        #  Description:  Boot Order variable lock enabled or disabled
        #  Default:  Disabled
        Write-Host "Setting Boot Configuration Lock to $DisabledValue"
        Write-Host ""
        $uefiV2.SettingsById[402].ConfiguredValue = $DisabledValue

        # 403 = USB Boot
        #  Description:  Enable booting from USB devices
        #  Default:  Enabled
        Write-Host "Setting USB Boot to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[403].ConfiguredValue = $EnabledValue

        # 404 = Auto Power On
        #  Description:  Enable automatic power-on after power loss
        #  Default:  Disabled
        Write-Host "Setting Auto Power On to $DisabledValue"
        Write-Host ""
        $uefiV2.SettingsById[404].ConfiguredValue = $DisabledValue

        # 406 = Network Stack
        #  Description:  Enable network stack in UEFI
        #  Default:  Disabled
        Write-Host "Setting Network Stack to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[406].ConfiguredValue = $EnabledValue

        # 407 = Battery Profile
        #  Description:  Active management scheme for battery usage pattern
        #  Default:  0
        Write-Host "Setting Battery Profile to '0'"
        Write-Host ""
        $uefiV2.SettingsById[407].ConfiguredValue = "0"

        # 500 = TPM clear EFI protocol
        #  Description:  Enable EFI protocol for invoking TPM clear
        #  Default:  Disabled
        Write-Host "Setting TPM clear EFI protocol to $DisabledValue"
        Write-Host ""
        $uefiV2.SettingsById[500].ConfiguredValue = $DisabledValue

        # 600 = Security
        #  Description:  UEFI Security Page Display enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Security Page to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[600].ConfiguredValue = $EnabledValue

        # 601 = Devices
        #  Description:  UEFI Devices Page Display enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Devices Page to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[601].ConfiguredValue = $EnabledValue

        # 602 = Boot
        #  Description:  UEFI Boot Manager Page Display enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Boot Configuration Page to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[602].ConfiguredValue = $EnabledValue

        #603 = DateTime
        #  Description:  UEFI DateTime Page Display enabled or disabled
        #  Default:  Enabled
        Write-Host "Setting Date/Time Page to $EnabledValue"
        Write-Host ""
        $uefiV2.SettingsById[603].ConfiguredValue = $EnabledValue

        Write-Host ""

        # Create a unique package name based on family and LSV.
        # We will choose a name that can be parsed by later scripts.
        $packageName = $uefiV2.SurfaceUefiFamily + "^Settings^" + $lsv + ".pkg"
        $fullPackageName = Join-Path -Path $packageRoot -ChildPath $packageName

        # Build and sign the Settings package then save it to a file.
        $settingsPackageStream =  $uefiV2.BuildAndSignSecuredSettingsPackage($privateOwnerKey, $password, "", $null, $lsv)
        $settingsPackage = New-Object System.IO.Filestream($fullPackageName, [System.IO.FileMode]::CreateNew, [System.IO.FileAccess]::Write)
        $settingsPackageStream.CopyTo($settingsPackage)
        $settingsPackage.Close()
    }
}

# In this demo we assume that there may be many packages in the directory.
# The logic here will find the packages with the greatest LSV for your family of device.
# How you handle this in your environment is up to you.
$searchPattern =  $Device.Model + "^Settings^*.pkg"
$fileEntries = [IO.Directory]::GetFiles($packageRoot, $searchPattern)
$maxName = ""
$settingsFileName = ""
foreach($fileName in $fileEntries) 
{
    $nameOnly = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
    if ($nameOnly -gt $maxName) {
        $settingsFileName = $fileName
        $maxName = $nameOnly
    }
}

if ($settingsFileName -ne "") {
    # We found a valid package for this device
    # Every time you try to update a UEFI package that package generates a unique session ID.
    # Here we save that ID in local files can be checked after reboot to see if
    # the UEFI settings session ID matches the most recent one you tried to update.

    # Apply the settings package based on device file
    $settingsPackageStream = New-Object System.IO.Filestream($settingsFileName, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read)
    $settingsSessionIdValue = $uefi.ApplySecuredSettingsPackage($settingsPackageStream)

    $settingsSessionIdFile = Join-Path -Path $packageRoot -ChildPath "SettingtingsSessionId.txt"
    $writer = New-Object System.IO.StreamWriter($settingsSessionIdFile)
    $writer.Write($settingsSessionIdValue)
    $writer.Close()
}



# A reboot is required to apply the packages.
# The user will need to enter the last two characters of the thumbprint.
Write-Host "Restart Required."
Write-Host "The user will need to enter the last two characters of the thumbprint on reboot."
Write-Host ""
Write-Host "Thumbprint =" $certPrint.Thumbprint -ForegroundColor Yellow
Write-Host ""


# For SCCM or other management solutions that wish to know what version is applied, tattoo the LSV and current DateTime (in UTC) to the registry:
$UTCDate = (Get-Date).ToUniversalTime().ToString()
$certIssuer = $certPrint.Issuer
$certSubject = $certPrint.Subject

$SurfaceRegKey = "HKLM:\SOFTWARE\Microsoft\Surface\SEMM"
New-RegKey $SurfaceRegKey
$LSVRegValue = Get-ItemProperty $SurfaceRegKey LSV -ErrorAction SilentlyContinue
$DateTimeRegValue = Get-ItemProperty $SurfaceRegKey LastConfiguredUTC -ErrorAction SilentlyContinue
$OwnershipSessionIdRegValue = Get-ItemProperty $SurfaceRegKey OwnershipSessionId -ErrorAction SilentlyContinue
$PermissionSessionIdRegValue = Get-ItemProperty $SurfaceRegKey PermissionSessionId -ErrorAction SilentlyContinue
$SettingsSessionIdRegValue = Get-ItemProperty $SurfaceRegKey SettingsSessionId -ErrorAction SilentlyContinue
$IsResetRegValue = Get-ItemProperty $SurfaceRegKey IsReset -ErrorAction SilentlyContinue
$certUsedRegValue = Get-ItemProperty $SurfaceRegKey CertName -ErrorAction SilentlyContinue
$certIssuerRegValue = Get-ItemProperty $SurfaceRegKey CertIssuer -ErrorAction SilentlyContinue
$certSubjectRegValue = Get-ItemProperty $SurfaceRegKey CertSubject -ErrorAction SilentlyContinue


If ($LSVRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name LSV -PropertyType DWORD -Value $lsv | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name LSV -Value $lsv
}

If ($DateTimeRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name LastConfiguredUTC -PropertyType String -Value $UTCDate | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name LastConfiguredUTC -Value $UTCDate
}

If ($OwnershipSessionIdRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name OwnershipSessionId -PropertyType String -Value $ownerSessionIdValue | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name OwnershipSessionId -Value $ownerSessionIdValue
}

If ($PermissionSessionIdRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name PermissionSessionId -PropertyType String -Value $permissionSessionIdValue | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name PermissionSessionId -Value $permissionSessionIdValue
}

If ($SettingsSessionIdRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name SettingsSessionId -PropertyType String -Value $settingsSessionIdValue | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name SettingsSessionId -Value $settingsSessionIdValue
}

If ($IsResetRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name IsReset -PropertyType DWORD -Value 0 | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name IsReset -Value 0
}

If ($certUsedRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name CertName -PropertyType String -Value $certName | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name CertName -Value $certName
}

If ($certIssuerRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name CertIssuer -PropertyType String -Value $certIssuer | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name CertIssuer -Value $certIssuer
}

If ($certSubjectRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name CertSubject -PropertyType String -Value $certSubject | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name CertSubject -Value $certSubject
}
