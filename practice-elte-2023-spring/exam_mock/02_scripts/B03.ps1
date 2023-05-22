param(
    [Parameter(Mandatory = $true)]
    [string]$name
)

$words = 0
$character = 0

foreach ($line in (Get-Content $name)) {
    foreach ($w in (($line).Split(" "))) {
        ($words) += 1
        ($character) += ($w).Length
    }
}

Write-Host (($character) / ($words))