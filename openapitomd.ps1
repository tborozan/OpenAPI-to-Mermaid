dotnet tool restore > $null

Get-ChildItem -Path .\* -Include *.json, *.yaml | ForEach-Object {
    $sourceFile = ".\$($_.Name)"
    $outputFile = ".\$($_.Name).md"
    hidi show -d $sourceFile -o $outputFile
    Write-Output "Generated --> $($outputFile)"
}