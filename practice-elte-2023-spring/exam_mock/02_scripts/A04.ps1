param(
    [Parameter(Mandatory = $true)]
    [String]$name,
    [Parameter(Mandatory = $true)]
    [Int]$len
)

foreach ($line in (Get-Content $name)) {
    if (($line).Length -gt ($len)) {
        Write-Host $line
        break;
    }
}