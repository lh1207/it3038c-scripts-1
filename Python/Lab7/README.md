Wikipedia module is a add-in for Python that allows users to acces the Wikipedia API without having to connect to website in a browser or command prompt. 

Before we start, you will need to download the Wikipedia add-in

Once you have downloaded it, import the Wikipedia module

``` python
import wikipedia
```

You can search for key words on Wikipedia by using the wikipedia.search

``` python
results = wikipedia.search('Cincinnati Bengals')

print(results)
```

You can find a summary of the keyword, which will provide more information in the output.

``` python
summary = wikipedia.summary("Cincinnati Bengals")
print(summary)
```
You can also filter the output by the number of sentences

``` python
summary = wikipedia.summary("Cincinnati Bengals", sentences = 4)

print(summary)
```
Finally, if you want to display the full contents of a Wikipedia page, you can do so with wikipedia.page

``` python
wiki_page = wikipedia.page("Cincinnati Bengals").content

print(wiki_page)
```

