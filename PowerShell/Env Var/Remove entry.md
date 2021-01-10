# Remove entry.md

## SRC
* https://stackoverflow.com/questions/39010405/powershell-how-to-delete-a-path-in-the-path-environment-variable

## 02 - one record
````powershell
# Get it
$path = [System.Environment]::GetEnvironmentVariable(
    'PATH',
    'Machine'
)
# Remove unwanted elements
$path = ($path.Split(';') |
Where-Object { $_ -ne 'ValueToRemove' }) -join ';'
# Set it
[System.Environment]::SetEnvironmentVariable(
    'PATH',
    $path,
    'Machine'
)
````
