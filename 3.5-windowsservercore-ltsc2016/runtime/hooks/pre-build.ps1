$kb = "KB4088787"
$version = "V1.002"
Start-Process -FilePath "robocopy" `
    -ArgumentList "\\winsehotfix\hotfixes\Windows10\RS1\RTM\$kb\$version\free\NEU\X64 $PSScriptRoot\.. Windows10.0-$kb-x64.msu" `
    -Wait
Rename-Item -Path "Windows10.0-$kb-x64.msu" -NewName "patch.msu" -Force
