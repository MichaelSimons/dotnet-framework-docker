$kb = "kb4054517"
$version = "V1.006"
Start-Process -FilePath "robocopy" `
    -ArgumentList "\\winsehotfix\hotfixes\Windows10\RS3\RTM\$kb\$version\free\NEU\X64 $PSScriptRoot\.. Windows10.0-$kb-x64.msu" `
    -Wait
Rename-Item -Path (Join-Path "$PSScriptRoot\.." "Windows10.0-$kb-x64.msu") -NewName "patch.msu" -Force
