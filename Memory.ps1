<#
--------------------------------------------------------------------------------------
    SRC:
    https://gallery.technet.microsoft.com/scriptcenter/Get-Memory-RAM-configuratio-35dda12e
    https://stackoverflow.com/questions/17681234/how-do-i-get-total-physical-memory-size-using-powershell-without-wmi
--------------------------------------------------------------------------------------
#>
                                                    ###########
                                                    #Script 0 #
                                                    ###########
#
Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
 
                                                    ###########
                                                    #Script 1 #
                                                    ###########
#https://imgur.com/bd4mzBU
[Cmdletbinding()]
Param(
    [string]$Computername = "localhost"
)
cls
$PysicalMemory = Get-WmiObject -class "win32_physicalmemory" -namespace "root\CIMV2" -ComputerName $Computername
 
Write-Host "Memore Modules:" -ForegroundColor Green
$PysicalMemory | Format-Table Tag,BankLabel,@{n="Capacity(GB)";e={$_.Capacity/1GB}},Manufacturer,PartNumber,Speed -AutoSize
 
Write-Host "Total Memory:" -ForegroundColor Green
Write-Host "$((($PysicalMemory).Capacity | Measure-Object -Sum).Sum/1GB)GB"
 
$TotalSlots = ((Get-WmiObject -Class "win32_PhysicalMemoryArray" -namespace "root\CIMV2" -ComputerName $Computername).MemoryDevices | Measure-Object -Sum).Sum
Write-Host "`nTotal Memory Slots:" -ForegroundColor Green
Write-Host $TotalSlots
 
$UsedSlots = (($PysicalMemory) | Measure-Object).Count  
Write-Host "`nUsed Memory Slots:" -ForegroundColor Green
Write-Host $UsedSlots
 
If($UsedSlots -eq $TotalSlots)
{
    Write-Host "All memory slots are filled up, none is empty!" -ForegroundColor Yellow
}
