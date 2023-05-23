# Create a script that counts how much are the average length of the words in a file
# (filename in parameter).


param (
    [Parameter(Mandatory = $true)]
    [string]$file
)

$content = Get-Content $file

$characters = 0
$words = 0

foreach ($line in $content) {
    foreach ($word in $line.Split(" ")) {
        $words += 1
        $characters += $word.Length
    }
}

Write-Host Average word length ($characters / $words)