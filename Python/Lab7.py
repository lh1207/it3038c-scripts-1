#You will first ned to install the Wikipedia module before importing it

import wikipedia

# You can search for key words on Wikipedia by using wikipedia.search

results = wikipedia.search('Cincinnati Bengals')

print(results)

# You can also find a summary of the keywords, which will produce a different output. You can also filter the output by sentences

summary = wikipedia.summary("Cincinnati Bengals", sentences = 4)

print(summary)

# Finally, if you want to display the full contents of a Wikipedia page, you can do so with wikipedia.page

wiki_page = wikipedia.page("Cincinnati Bengals").content

print(wiki_page)  