param(
    [Parameter(Mandatory = $true)]
    [string]$fileName
)

$content = (Get-Content $fileName)

[array]::Reverse($content)
foreach ($line in $content) {

    $words = ($line).Split(" ")
    [array]::Reverse($words)
        
    Write-Host $words
}
