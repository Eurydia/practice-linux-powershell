param(
    [Parameter(Mandatory = $true)]
    [string]$n
)

$values = @{
    "I" = 1
    "V" = 5
    "X" = 10
    "L" = 50
    "C" = 100
    "D" = 500
    "M" = 1000
}

($decimalValue) = 0
($previousValue) = 0

# Iterate through the Roman numeral from right to left
for (($i) = (($n).Length - 1); ($i) -ge 0; ($i)--) {
    ($currentValue) = $values[($n)[($i)]]

    # If the current value is less than the previous value,
    # subtract it from the decimal value
    if (($currentValue) -lt ($previousValue)) {
        ($decimalValue) -= ($currentValue)
    }
    else {
        # Add the current value to the decimal value
        (($decimalValue)) += ($currentValue)
        ($previousValue) = ($currentValue)
    }
}

Write-Host ($decimalValue)