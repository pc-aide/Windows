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
cls
# Box Group
$BoxGroup = Read-MultiLineInputBoxDialog -Message "List Group" -WindowTitle "NewGrs_&_Users_V1.0.ps1" -DefaultText "Name;Path;Description
STU_A_mstsc;ou=rdp,ou=groups,dc=vino,dc=rus;L'acces RDP via l'utilitaire mstsc.exe pour HelpIT_Desk
IT_X_admins;ou=Admins,ou=Groups,dc=vino,dc=rus;L'acces aux objects elevated pour les utilisateurs administration IT"
if ($BoxGroup -eq $null) { Write-Host "You clicked Cancel" }
else {
# History
 Write-Host "You entered the following text:" -ForegroundColor Yellow
"$BoxGroup"
}
 
# Format Csv
$listGroup = $BoxGroup | ConvertFrom-Csv -Delimiter ";"

#New Groups
foreach($Group in $ListGroup){
    Try{
        #Name
        $GroupName = $Group.Name
        #Path
        $GroupPath = $Group.Path
        #Description
        $GroupDescription = $Group.Description
        #New Groups
        New-adGroup -name "$GroupName" -GroupScope Global -path "$GroupPath" -description "$GroupDescription"
        
    }
    catch{
        #Errors
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}

#Add IT_X_admins in "Domain Admins"
Add-ADGroupMember -Identity "Domain Admins" -Members "IT_X_admins"

# Box Users
$BoxUser = Read-MultiLineInputBoxDialog -Message "List User" -WindowTitle "NewGrs_&_Users_V1.0.ps1" -DefaultText "GivenName;SurName;Name;Description;Path
Steve;Jobs;jobs01;;ou=elevated,ou=profils,dc=vino,dc=rus
;;HelpIT_Desk;Help Desktop IT for STD Users;ou=std,ou=profils,dc=vino,dc=rus"
if ($BoxUser -eq $null) { Write-Host "You clicked Cancel" }
else {
# History
 Write-Host "You entered the following text:" -ForegroundColor Yellow
"$BoxUser"
}
 
# Format Csv
$listUser = $BoxUser | ConvertFrom-Csv -Delimiter ";"

#Temporary Password
$PWTemp = Read-Host -AsSecureString "Input temporary password"

#New Users
foreach($User in $ListUser){
    Try{
    #GivenName
    $UserGivenName = $User.GivenName
    #SurName
    $UserSurName = $User.SurName
    #Name
    $UserName = $User.Name
    #Description
    $UserDescription = $User.Description
    #Path
    $UserPath = $User.Path
    New-ADUser -GivenName $UserGivenName -Surname $UserSurName -Name $UserName -Description $UserDescription -Enabled $true -AccountPassword $PWTemp -Path "$UserPath" -ChangePasswordAtLogon $false #Pour les tests: $false
    }
    catch{
        #Errors
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}

#Add specified user to a group
Add-ADGroupMember -Identity IT_X_admins -Members jobs01
Add-ADGroupMember -Identity STU_A_mstsc -Members HelpIT_Desk
