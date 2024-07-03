$pester_result = Invoke-Pester skript.Tests.ps1 -Passthru

$test_table = "| Test | Result |`n| --- | --- |`n"

foreach ($test in $pester_result.Tests) {
    $test_table += "| $($test.Name) | $($test.Result) |`n"

}

$test_table
$GITHUB_STEP_SUMMARY = $test_table 

if ($Error[0].Fullyqualifiederrorid -eq 'PesterAssertionFailed') {exit 1}  