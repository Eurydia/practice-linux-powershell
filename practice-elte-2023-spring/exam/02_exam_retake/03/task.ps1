# 3. Write a script which gets a decimal number and gives back its binary format!
# E.g. 910 = 10012 

param(
    [Parameter(Mandatory = $true)]
    [string]$N
)

$binary = [Convert]::ToString($N, 2)
Write-Host $binary