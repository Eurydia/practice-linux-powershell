# 4. Create a script that counts how much are the average length of the words in a file

param(
    [Parameter(Mandatory = $true)]
    [string]$filename
)

$content = Get-Content $filename

$wordCount = 0
$characterCount = 0

foreach ($line in $content) {
    $words = $line.Split(" ")
    $wordCount += $words.Length

    foreach ($word in $words) {
        $characterCount += $word.Length
    }
}

Write-Host (($characterCount) / ($wordCount))