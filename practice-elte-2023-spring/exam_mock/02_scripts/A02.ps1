param(
    [Parameter(Mandatory = $true)]
    [string]$N
)


Write-Host ([System.Convert]::ToDecimal($N, [cultureinfo]::GetCultureInfo("fr-FR")))