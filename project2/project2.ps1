#Add space before first prompt

Write-Host ""

Write-Output "This script will display information about your selected hard drive."

# Add delay before the next message and prompt

Start-Sleep -Seconds 3

# Add space between prompts
Write-Host ""

#Declare read-host variable for the user to select input

$driveletter = Read-Host -Prompt "Please enter the hard drive letter you want to look at (make sure to include a colon)"

#Display all storage information based on selected drive

$disk = Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID='$driveletter'"

#Declare files variable to display available storage space

$available_storage = [math]::Round($($disk.FreeSpace / 1GB))

#Display information about the selected hard drive

Write-Host ""

Write-Host "Here is some information about the ${driveletter} drive:"

#Add a delay before showing the first result

Start-Sleep -Seconds 3

# Display the total storage of the selected drive

$total_storage =  [math]::Round($disk.Size /1GB)

Write-Host ""

Write-Host "The $driveletter drive has about $total_storage GB of total storage."

#Delay the time before the next result

Start-Sleep -Seconds 3

#Display the contents of the selected drive

Write-Host ""

Write-Host "The $driveletter drive has about $available_storage GB left."

# Calculate the percentage used of the disk

$used_storage = [math]::Round(($disk.Size - $disk.FreeSpace) / 1GB, 2)

$used_percentage [math]::Round(($used_storage / $total_storage)* 100)

#Shows the percentage of available storage

$storage_percent = 100 - $used_storage

Start-Sleep -Seconds 1

Write-Host "That is roughly $storage_percent%."