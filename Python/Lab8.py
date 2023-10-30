# Import the Python libraries to scrape from the books.toscrape.com website
import requests
from bs4 import BeautifulSoup

# Send request to website
response = requests.get("https://books.toscrape.com/catalogue/a-light-in-the-attic_1000/index.html")
html_content = response.text

# Parse HTMl content 
soup = BeautifulSoup(html_content, 'html.parser')

# Extract book name 
book_title_div = soup.find("div", {"class": "col-sm-6 product_main"})

book_title = book_title_div.find("h1")

title = book_title.text

# Extract book price
price_element_div = soup.find("div", {"class": "col-sm-6 product_main"})

price_element = price_element_div.find("p", {"class": "price_color"})

price = price_element.text

# Print results of the web scraping
print("Book:", title)
print("Price:", price)

    
