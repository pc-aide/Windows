# Extand Disk

## Steps
1) Raise disk from ESxi
2) Powershell:
````powershell
# Before
Get-psDrive c

# Variable specifying the drive you want to extend
$drive_letter = "C"

# Script to get the partition sizes and then resize the volume
$size = (Get-PartitionSupportedSize -DriveLetter $drive_letter)

# After
Resize-Partition -DriveLetter $drive_letter -Size $size.SizeMax
````
[<img src="https://i.imgur.com/SavC0ZE.png">](https://i.imgur.com/SavC0ZE.png)
[<img src="https://i.imgur.com/rFkUnoi.png">](https://i.imgur.com/rFkUnoi.png)
