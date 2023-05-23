# 3. Implement a script that gets words in a file (filename as a parameter) and copies that
# words which are symmetric (e.g. level, Hannah, madam, etc.) same.txt!

param (
    [Parameter(Mandatory = $true)]
    [string]$file
)

$content = Get-Content $file
foreach ($line in $content) {
    foreach ($word in $line.Split(" ")) {
        $a = $word.ToCharArray()
        [array]::Reverse($a)
        $b = -join ($a)
        if ($b -eq $word) {
            Write-Host $word
        }
    }
} 