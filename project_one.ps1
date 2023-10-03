Write-Output "This script will display how much storage you have left."

#Declare read-host variable for the user to select input

$driveletter = Read-Host -Prompt "Please enter the hard drive letter you want to look at (make sure to incldude a colon)"

#Display all storage information based on selected drive

$disk = Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID='$driveletter'"

#Declare files variable to display all contents of a file

$available_storage = $($disk.FreeSpace / 1GB)

#Display the contents of the selected drive

Write-Host "The $driveletter drive has $available_storage GB left."