#import necessary modules for running the script
import json
import requests

#Get the information from the api.js node script
r = requests.get('http://localhost:3000')

#Format the data in json
data=r.json()

#Parse the data into a more legible format
output_formatted = "\n".join(f"{entry['name']} is {entry['color']}" for entry in data)

#Print the formatted output
print(output_formatted)

