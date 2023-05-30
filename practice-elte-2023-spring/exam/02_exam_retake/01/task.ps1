# 1.  Write a PowerShell script which calculates the values of ax3+bx2+cx+d polinom
# between N and M (only at integer values)! A,b,c and d should be read from keyboard!    (5)

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
    Write-Host $a*$i^3 + $b*$i^2 + $c*$i + $d = (($a) * ($i) * ($i) * ($i) + ($b) * ($i) * ($i) + ($c) * ($i) + ($d) )
}