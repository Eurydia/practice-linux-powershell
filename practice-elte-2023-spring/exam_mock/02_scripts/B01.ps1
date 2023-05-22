param(
    [Parameter(Mandatory = $true)]
    [Int]$N,
    [Parameter(Mandatory = $true)]
    [Int]$M,
    [Parameter(Mandatory = $true)]
    [Int]$a,
    [Parameter(Mandatory = $true)]
    [Int]$b,
    [Parameter(Mandatory = $true)]
    [Int]$c,
    [Parameter(Mandatory = $true)]
    [Int]$d
)

for (($i) = ($N); ($i) -le ($M); ($i) ++) {
    Write-Host (($a) * ($i) * ($i) * ($i) + ($b) * ($i) * ($i) + ($c) * ($i) + ($d) )
}