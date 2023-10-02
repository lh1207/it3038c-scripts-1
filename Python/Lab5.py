#This script will take the user's birthdate and calculate their age in seconds

import datetime

# Determine the birthdate of the individual

print("Hello, I will calculate how old you are in seconds. Enter your birth date in numbers, NOT letters!")

print("Enter your DOB year: ")
year = input()

print("Next, enter your DOB month: ")
month = input()

print("Finally, enter your DOB day: ")
day = input()

# Construct the date string in the correct format
dateBirth = year + "-" + month + "-" + day

# Use datetime.strptime with the correct format
dateBirthInt = datetime.datetime.strptime(dateBirth, "%Y-%m-%d")

print("Your date of birth is " + dateBirth + ".")

currentDate = datetime.datetime.now()

timeDifference = currentDate - dateBirthInt
secondsBorn = timeDifference.total_seconds()

print("You have lived for approximately " + str(secondsBorn) + " seconds.")
