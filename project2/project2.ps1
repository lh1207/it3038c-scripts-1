# Add space before first prompt
Write-Host ""

Write-Output "This script will display information about your selected hard drive."

# Add space between prompts
Write-Host ""

# List all available drives on the system
$drives = Get-PSDrive -PSProvider FileSystem

# Display a prompt to select a drive
Write-Host "Available drives:"
$drives | ForEach-Object { Write-Host $_.Name }

$driveletter = Read-Host -Prompt "Please enter the hard drive letter you want to look at"

# Check if the entered drive letter is valid
if ($drives.Name -notcontains $driveletter) {
  Write-Host "Invalid drive letter. Please select a valid drive."
  exit
}

# Display all storage information based on the selected drive
$disk = Get-PSDrive -Name $driveletter

# Display information about the selected hard drive
Write-Host ""
Write-Host "Here is some information about the ${driveletter} drive:"

# Display the total storage of the selected drive
$total_storage = [math]::Round(($disk.Used + $disk.Free) / 1GB)
Write-Host ""
Write-Host "The $driveletter drive has about $total_storage GB of total storage."

# Calculate the percentage used of the disk, handling zero total storage
if ($total_storage -ne 0) {
  $used_storage = [math]::Round($disk.Used / 1GB)
  $used_percentage = [math]::Round(($used_storage / $total_storage) * 100)
}
else {
  $used_storage = 0
  $used_percentage = 0
}

# Calculate the available storage
$available_storage = [math]::Round($disk.Free / 1GB)
$available_percent = 100 - $used_percentage

# Display the contents of the selected drive
Write-Host ""
Write-Host "The $driveletter drive has about $available_storage GB left."

# Shows the percentage of used and available storage
Write-Host ""

Write-Host "That is roughly $used_percentage% used and $available_percent% left."

Write-Host ""

Write-Host "Hope you've found the information valuable!"