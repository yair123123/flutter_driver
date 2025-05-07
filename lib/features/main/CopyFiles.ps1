$sourceFolder = Get-Location

$scriptPath = $PSScriptRoot
if (-not $scriptPath) { $scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition }

$destinationFolder = Join-Path $scriptPath "CollectedFiles"

if (-not (Test-Path $destinationFolder)) {
    New-Item -ItemType Directory -Path $destinationFolder | Out-Null
}

Get-ChildItem -Path $sourceFolder -Recurse -File | Where-Object {
    # מדלג על קבצים שכבר נמצאים בתיקיית CollectedFiles
    $_.FullName -notlike "$destinationFolder*"
} | ForEach-Object {
    $destinationPath = Join-Path $destinationFolder $_.Name

    $counter = 1
    while (Test-Path $destinationPath) {
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
        $extension = [System.IO.Path]::GetExtension($_.Name)
        $destinationPath = Join-Path $destinationFolder ("$baseName-$counter$extension")
        $counter++
    }

    Copy-Item -Path $_.FullName -Destination $destinationPath
}

