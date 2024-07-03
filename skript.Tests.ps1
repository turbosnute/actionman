BeforeAll {
    . ./skript.ps1
}
Describe 'Tests' {
    Context 'Convert-fahrenheitToCelcius' {
        It 'Converts 32F to 0C' {
            $result = Convert-fahrenheitToCelcius -fahrenheit 32
            $result | Should -Be 0
        }
        It 'Converts 212F to 100C' {
            $result = Convert-fahrenheitToCelcius -fahrenheit 212
            $result | Should -Be 100
        }
    }

    Context 'Convert-feetToMeters' {
        It 'Converts 1ft to 0.3048m' {
            $result = Convert-feetToMeters -feet 1
            $result | Should -Be 0.3048
        }
    }
}