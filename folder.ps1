$folderPath = "D:\NewFolder"

if (-not (Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
    Write-Host "Folder created successfully."
} else {
    Write-Host "Folder already exists."
}
