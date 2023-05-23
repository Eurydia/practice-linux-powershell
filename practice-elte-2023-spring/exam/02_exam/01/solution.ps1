# 1. Create a PowerShell script which writes out the odd numbers between N and M
# (parameters)! Check whether N is smaller than M or not – if not, change their values!

param(
    [Parameter(Mandatory = $true)]
    [int]$n,
    [Parameter(Mandatory = $true)]
    [int]$m
)

if ($n -gt $m) {
    $x = $n
    $n = $m
    $m = $x
}

for ($i = $n; $i -le $m; ($i)++ ) {
    if (($i % 2) -eq 1) {
        Write-Host $i" " -NoNewline
    }
}
