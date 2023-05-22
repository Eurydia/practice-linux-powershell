param(
    [Parameter(Mandatory = $true)]
    [int]$N)

$X = 0
$Y = 1
$Z = 1

Write-Host $Z -NoNewline

while ($N -ge 2) {
    Write-Host ","$Z -NoNewline

    $Z = $X + $Y
    $X = $Y
    $Y = $Z

    $N = ($N) - 1
}
