<#
--------------------------------------------------------
  Syntax:
    ForEach ($<item> in $<collection>){<statement list>}
--------------------------------------------------------
#>

#E.g
$letterArray = "a","b","c","d"
foreach ($letter in $letterArray)
{
  Write-Host $letter
}

#E.g #2
foreach ($file in Get-ChildItem)
{
  Write-Host $file
}

#E.g #3
foreach ($file in Get-ChildItem)
{
  if ($file.length -gt 100KB)
  {
    Write-Host $file
  }
}

#E.g #4
($file.length / 1024).ToString("F0")
