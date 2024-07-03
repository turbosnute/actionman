
function Convert-fahrenheitToCelcius {
    param([int]$fahrenheit)
    return ($fahrenheit - 32) * 5/9
}
function Convert-feetToMeters {
    param([int]$feet)
    return $feet * 0.3048 +1
}
