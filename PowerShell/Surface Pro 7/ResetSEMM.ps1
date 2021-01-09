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
# ResetSemm.ps1
#
# PURPOSE:
#  Creates and applies a SEMM reset package for a specific device.
#
# RUNS ON:
#  Surface device to be reset.
#
# PREREQUISITES:
#  1) Administrative privileges on the device.
#  2) Surface Device has installed the SurfaceUEFI_Manager_<version>.msi
#  3) Certificate has been generated and is accessible (and password is 1234)
#  4) This Surface device was formerly enrolled with the same certificate
#
# REMARKS:
#  This script demonstrates the creation of a SEMM reset package for a single device.
#  It may not be the way you normally do this, but it demonstrates a number of
#  tool capabilities and techniques not covered in the other scripts.
#  The serial number is read directly from the device.
#  An alternative implementation might be to provide this from a text file.

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
$packageRoot = $WorkingDirPath
$certName = "FabrikamSEMMSample.pfx"
$DllVersion = "2.70.139.0"


$privateOwnerKey = Join-Path -Path $packageRoot -ChildPath $certName

# If your PFX has a password
$password = "1234"

if (-not (Test-Path $packageRoot))  { New-Item -ItemType Directory -Force -Path $packageRoot }

if (!(Test-Path $privateOwnerKey)) {
    Write-Host -ForegroundColor Yellow "You must manually copy your signing key to " $privateOwnerKey
    Write-Host -ForegroundColor Yellow "!!! Make sure you have saved a copy and do not lose this file !!!"
    Exit
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

if ($uefi.ConfigurationMechanism -ne [Microsoft.Surface.IUefiConfiguration+ConfigurationMechanismEnum]::V2) {
    Write-Host -ForegroundColor Red "Unsupported device: " $uefi.Model
    Exit
}

# Create the reset package for this specific device (serial number)
$identity = [Microsoft.Surface.IUefiConfiguration+Identity]::SignerOwner
$resetPackage = $uefi.BuildAndSignSignerProvisioningResetPackage(
    $privateOwnerKey,
    $password,
    $identity,
    $uefi.SerialNumber)

# Apply the package
$sessionIdValue = $uefi.ApplySignerProvisioningPackage($resetPackage)

# Save the session id for later verification after reboot
$ownerSessionIdFile = Join-Path -Path $packageRoot -ChildPath "OwnerSessionId.txt"
$writer = New-Object System.IO.StreamWriter($ownerSessionIdFile)
$writer.Write($sessionIdValue)
$writer.Close()


# A reboot is required to apply the reset package.
Write-Host "Restart Required."
Write-Host ""


# For SCCM or other management solutions that wish to know what version is applied, tattoo the LSV and current DateTime (in UTC) to the registry:
$UTCDate = (Get-Date).ToUniversalTime().ToString()

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
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name LSV -Force
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
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name OwnershipSessionId -Force
}

If ($PermissionSessionIdRegValue -eq $null)
{
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name PermissionSessionId -Force
}

If ($SettingsSessionIdRegValue -eq $null)
{
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name SettingsSessionId -Force
}

If ($IsResetRegValue -eq $null)
{
    New-ItemProperty -Path $SurfaceRegKey -Name IsReset -PropertyType DWORD -Value 1 | Out-Null
}
Else
{
    Set-ItemProperty -Path $SurfaceRegKey -Name IsReset -Value 1
}

If ($certUsedRegValue -eq $null)
{
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name CertName -Force
}

If ($certIssuerRegValue -eq $null)
{
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name CertIssuer -Force
}

If ($certSubjectRegValue -eq $null)
{
    #nothing
}
Else
{
    Remove-ItemProperty -Path $SurfaceRegKey -Name CertSubject -Force
}
