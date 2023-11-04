import json 
import requests 
 
print('Please enter your zip code:') 
zip = input() 
 
r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=%s,us&appid=0fe3a2ab8c999bc1bd6d2ccc206edba1' % zip) 
data=r.json() 
# print(data['weather'][0]['description'])
print(data)

