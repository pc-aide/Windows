<#
    .SYNOPSIS
    Create New OU from prompt input box 

    .INPUTS
    First line: Name;Path
    Next line: NewName;NewPath
    NB: Delimiter ";" between Name & Path
    NB02: oUPath we use ","

    .EXAMPLE
    PS>  .\NewOU.ps1
    Name;path
    Servers;dc=VINO,dc=RUS
    Workstations;dc=VINO,dc=RUS
    VM;ou=Workstations,dc=VINO,dc=RUS
    OTT;ou=Workstations,dc=VINO,dc=RUS
    PIE;ou=Workstations,dc=VINO,dc=RUS
    Groups;dc=VINO,dc=RUS
    Admins;ou=Groups,dc=VINO,dc=RUS
    RDP;ou=Groups,dc=VINO,dc=RUS
    Printers;ou=Groups,dc=VINO,dc=RUS
    Profils;dc=VINO,dc=RUS
    STD;ou=Profils,dc=VINO,dc=RUS
    Elevated;ou=Profils,dc=VINO,dc=RUS

    .LINK
    https://www.youtube.com/user/Boliccov
    https://imgur.com/j3rsSay

    VERSION: 1.0
    DATE: 20-06-2020
    AUTHOR: PC-Aide
#>

#Function
function Read-MultiLineInputBoxDialog([string]$Message, [string]$WindowTitle, [string]$DefaultText)

{

    # 
    Add-Type -AssemblyName System.Drawing
    Add-Type -AssemblyName System.Windows.Forms
    
    # Create the Label.
    $label = New-Object System.Windows.Forms.Label
    $label.Location = New-Object System.Drawing.Size(10,10)
    $label.Size = New-Object System.Drawing.Size(280,20)
    $label.AutoSize = $true
    $label.Text = $Message
    
    # Create the TextBox used to capture the user's text.
    $textBox = New-Object System.Windows.Forms.TextBox
    $textBox.Location = New-Object System.Drawing.Size(10,40)
    $textBox.Size = New-Object System.Drawing.Size(575,200)
    $textBox.AcceptsReturn = $true
    $textBox.AcceptsTab = $false
    $textBox.Multiline = $true
    $textBox.ScrollBars = 'Both'
    $textBox.Text = $DefaultText
    
    # Create the OK button.
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Size(415,250)
    $okButton.Size = New-Object System.Drawing.Size(75,25)
    $okButton.Text = "OK"
    $okButton.Add_Click({ $form.Tag = $textBox.Text; $form.Close() })
    
    # Create the Cancel button.
    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Size(510,250)
    $cancelButton.Size = New-Object System.Drawing.Size(75,25)
    $cancelButton.Text = "Cancel"
    $cancelButton.Add_Click({ $form.Tag = $null; $form.Close() })
    
    # Create the form.
    $form = New-Object System.Windows.Forms.Form
    $form.Text = $WindowTitle
    $form.Size = New-Object System.Drawing.Size(610,320)
    $form.FormBorderStyle = 'FixedSingle'
    $form.StartPosition = "CenterScreen"
    $form.AutoSizeMode = 'GrowAndShrink'
    $form.Topmost = $True
    $form.AcceptButton = $okButton
    $form.CancelButton = $cancelButton
    $form.ShowInTaskbar = $true
    
    # Add all of the controls to the form.
    $form.Controls.Add($label)
    $form.Controls.Add($textBox)
    $form.Controls.Add($okButton)
    $form.Controls.Add($cancelButton)
    
    # Initialize and show the form.
    $form.Add_Shown({$form.Activate()})
    $form.ShowDialog() > $null   # Trash the text of the button that was clicked.
    
    # Return the text that the user entered.
    return $form.Tag
}
Clear-Host
# Box OU
$BoxOU = Read-MultiLineInputBoxDialog -Message "List OU" -WindowTitle "NewOU_V1.0.ps1" -DefaultText "Name;Path
NewOU;DC=ViNO,RUS"
if ($BoxOU -eq $null) { Write-Host "You clicked Cancel" }
else {
# History
 Write-Host "You entered the following text:" -ForegroundColor Yellow
"$BoxOU"
}
 
# Format Csv
$listOU = $BoxOU | ConvertFrom-Csv -Delimiter ";"

foreach($OU in $ListOU){
    Try{
        #Name
        $OUName = $OU.Name
        #Path
        $OUPath = $OU.Path
        #Display the Name & path of the new OU
        Write-Host -ForegroundColor Yellow $OUName $OUPath
        #Create OU
        New-ADOrganizationalUnit -Name "$OUName" -Path "$OUPath"
        #Display confirmation
        Write-Host -ForegroundColor Green "OU $OUName created"
    }
    catch{
        #Error
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}
