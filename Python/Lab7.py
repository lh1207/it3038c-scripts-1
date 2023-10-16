# This script will prompt the user to enter a string of characters and get Wikipedia results

#Import the Wikipedia module

import wikipedia

# Ask user for input

print("Hello! This prompt will retrieve information from Wikipedia on the content you search.")
characters = input("What do you want to search for? " )

#Print the search of keywords

search = wikipedia.search(characters)
print("The keywords for " + characters + ":" + str(search))

#Print the summary of keywords

summary = wikipedia.summary(characters)
print("The summary for " + characters + ":" + str(summary))

#Print the page of keywords

wiki_page = wikipedia.page(characters).content

print("The Wikipedia page for " + characters + ":" + str(wiki_page))
print("I hope you enjoyed using the Wikipedia API!")