function getIP{ 

    (get-netipaddress).ipv4address | Select-String "172*" 

} 

$IP = getIP 

#Claim the username variable to get the username

$username = $env:USERNAME

#Claim the variable to get the hostname of the device

$hostname = $env:COMPUTERNAME

#Powershell Version

$powershellVersion = $PSVersionTable.PSVersion.Major

#Get current date to show all but the time.

$currentdate = Get-Date

$date = "{0:MMMM d, yyyy}" -f $currentdate

write-host "This machine's IP is $IP. User is $username. Hostname is $hostname. Powershell Version $powershellVersion. Today's date is $date." 