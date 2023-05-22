param(
    [Parameter(Mandatory = $true)]
    [int]$N,
    [Parameter(Mandatory = $true)]
    [int]$M
)

if (($N) -gt ($M)) {
    $x = ($N)
    $N = ($M)
    $M = ($x)
}

for (($i) = ($N); ($i) -le ($M); ($i)++) {
    if ((($i) % 2) -eq 1) {
        Write-Host $i
    }
}