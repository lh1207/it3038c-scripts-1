# Peer Review
- I reviewed the project located at: (provide link to peer's github): https://github.com/huthbn/it3038c-scripts/tree/main/project2
- I pushed my changes to: https://github.com/lh1207/project2-peer-review-huthbn/tree/master/project2

# Goal of Script
The goal of the script was to calculate total and remaining storage on a mounted hard-drive.

# Clear documentation?
The documentation was clear

# Did the script work as intended?
It worked on a Windows 10 virtual machine. However, as a Linux user, I had to make some changes to the script to support the UNIX filesystem, which resulted in my first run being unsuccessful. I was able to run the script after purging the Get-WMIObject cmdlet for the ForEach-Object, only difference being that ForEach-Object support UNIX. This allows the user to see all mounted drives right away instead of guessing. I also had to make slight modifications to the variables responsible for calculating the total and remaining space, but nothing crucial.

## First Attempt
![Screenshot_20231112_170725](https://github.com/lh1207/project2-peer-review-huthbn/assets/100445409/fdc5a199-fca1-4e71-a74d-6fd02eeb8470)
## After Changes
![Screenshot_20231112_171124](https://github.com/lh1207/project2-peer-review-huthbn/assets/100445409/dcc2f468-89f0-4f63-b96d-35cd95328974)
