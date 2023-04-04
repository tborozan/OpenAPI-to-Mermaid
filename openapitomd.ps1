dotnet tool restore > $null

Get-ChildItem -Path .\* -Include *.json, *.yaml | ForEach-Object {
    $sourceFile = $_.FullName
    $outputFile = "$($_.FullName).md"
    dotnet tool run hidi show -d $sourceFile -o $outputFile
}