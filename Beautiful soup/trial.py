#pip install requests 
#pip install bs4 
#pip install html5lib

import requests 
from bs4 import BeautifulSoup 

url='http://codewithharry.com'

#step1: Get the html
r=requests.get(url)
htmlContent=r.content
print(htmlContent)

#step2: Parse the Html
soup=BeautifulSoup(htmlContent,'html.parser')
print(soup.prettify)

#Step3: HTML Tree Traversal.
#1 . Get the title of the html page
title=soup.title
#print(type(title))

## 4. Comment : 
markup="<p><!-- this is a comment --></p>"
soup2=BeautifulSoup(markup)
print(soup2.p.string)
exit()




#2 Get the paragrph title of html page : 
paras=soup.find_all('p')
print(paras)

#Get the first element : 
print(soup.find('p'))

#Get the classes of any element in the HTMl page: 
print(soup.find('p')['class'])

#find all the element with class lead 
print(soup.find_all("p",class_="lead"))

#Get the text from the tags/soups:
print(soup.find('p').get_text())

# get the all the anchor tags from the page : 
anchors=soup.find_all('a')
all_links=set()
#print(anchors)

#Get all the links on the page: 
for link in anchors :
    if (link.get('href') != '#'):
        linkText='http://codewithharry.com'+link.get('href')
        all_links.add(link)
        print(linkText)


        
















