Write-Host "VELARIS INSTALL STARTED..." -ForegroundColor Cyan

$zip = "$env:TEMP\velaris.zip"
$folder = "$env:TEMP\VELARIS"

Write-Host "Downloading..." -ForegroundColor Yellow

Invoke-WebRequest "https://github.com/ah5e/velarislab1/releases/download/v1.0/VELARIS.zip" -OutFile $zip

Write-Host "Extracting..." -ForegroundColor Yellow

Expand-Archive -Path $zip -DestinationPath $folder -Force

Write-Host "Launching..." -ForegroundColor Green

Start-Process (Get-ChildItem $folder -Recurse -Filter "Velaris.exe" | Select-Object -First 1).FullName
