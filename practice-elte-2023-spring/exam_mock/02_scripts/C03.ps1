param(
    [Parameter(Mandatory = $true)]
    [string]$fileName
)

$content = Get-Content $fileName

for (($i) = (($content).Length - 1); 0 -ge ($i); ($i)-- ) {
    $words = [System.Convert]::ToString(($content)[($i)]).Split(" ")

    for (($j) = (($words).Length - 1); 0 -ge ($j); ($j)-- ) {
        Write-Host $word[$j] -NoNewline
    }
    Write-Host $content
}
