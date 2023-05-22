param(
    [Parameter(Mandatory = $true)]
    [string]$fileName
)

foreach ($line in (Get-Content $fileName)) {
    foreach ($word in $line.Split(" ")) {


        $b = ($word).ToCharArray()
        [array]::Reverse($b)
        $c = -join ($b)
        
        if ($word -eq $c) {
            Write-Host $word

        }
    }
}

