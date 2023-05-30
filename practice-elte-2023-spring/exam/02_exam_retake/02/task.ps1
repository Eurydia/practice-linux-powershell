# 2. Write a script which writes out a file (filename as parameter) content reverse. First line
# first word to last line last word.     

param(
    [Parameter(Mandatory = $true)]
    [string]$fileName
)

$content = (Get-Content $fileName)

foreach ($line in $content) {

    $reverseLine = ""
    
    foreach ($char in $line.ToCharArray()) {
        $reverseLine = $char + $reverseLine
    }
        
    Write-Host $reverseLine
}
