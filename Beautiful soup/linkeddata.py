#pip install requests 
#pip install bs4 
#pip install html5lib

import requests 
from bs4 import BeautifulSoup 

url='https://www.linkedin.com/jobs/collections/?currentJobId=3378645795'

#step1: Get the html
r=requests.get(url)
htmlContent=r.content
print(htmlContent)

      
















