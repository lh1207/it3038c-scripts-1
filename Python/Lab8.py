from bs4 import BeautifulSoup
import requests, re 
 
data = requests.get("https://www.reebok.com/p/100033359/flexagon-energy-4-men-s-training-shoes").content
soup = BeautifulSoup(data, 'html.parser')
span = soup.find("h1", {"class":"tag_h1_light--2sTWu  product-wrapper-title--1ky4m"}) 
title = span.text 
span = soup.find("span", {"class":"tag_h4--1gGXW  product-price--nXytc"}) 
price = span.text 
print("Item %s has price %s" % (title, price))
    