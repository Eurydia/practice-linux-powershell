param(
    [Parameter(Mandatory = $true)]
    [string]$fileName,
    [Parameter(Mandatory = $true)]
    [string]$lastName
)

if ([System.IO.File]::Exists("text.txt") -eq $true) {
    Clear-Content "text.txt"
}

foreach ($line in (Get-Content ($fileName))) {
    $l = ($line).Split(" ")[0]
    $n = ($line).Split(" ")[1]

    if (($l).Equals($lastName)) {
        Add-Content -Path "text.txt" -Value  $n
    }
}
