$zip = "$env:TEMP\velaris.zip"
$folder = "$env:TEMP\VELARIS"

Invoke-WebRequest "https://raw.githubusercontent.com/ah5e/velarislab/main/VELARIS.zip" -OutFile $zip

Expand-Archive -Path $zip -DestinationPath $folder -Force

Start-Process "$folder\Velaris.exe"
