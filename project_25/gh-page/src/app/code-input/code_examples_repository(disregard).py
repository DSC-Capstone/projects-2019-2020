
# show dataframe(chained)
df  = pd.DataFrame(data).head()

#show dataframe(unchained)
df  = pd.DataFrame(data)
df = df.head()



#chained
# Find the UCSD student with highest GPA
result = student_data.sort_values(by=['GPA']).head()

#unchained
# Find the UCSD student with highest GPA
student_data = student_data.sort_values(by=['GPA']).head()
result = student_data.head()


# Chanined
# Find the average price of books in data science or computer science field
average_price = product_data.where(product_data['item']=='book').isin({'field': ['data science','computer science']})['price'].mean()

# unchained
# Find the average price of books in data science or computer science field

book_data = product_data.where(product_data['item']=='book')
book_price = book_data.isin({'field': ['data science','computer science']})['price']
average_price = book_price.mean()


# Python Crawl Function
# Source: https://stackoverflow.com/questions/694366/how-can-i-make-this-recursive-crawl-function-iterative
# Example 1
def crawl(self, url):
    "Get all URLS from which to scrape categories."
    links = BeautifulSoup(urllib2.urlopen(url)).findAll(Crawler._match_tag)
    for link in links:
      for attr in link.attrs:
        if Crawler._match_attr(attr):
          if Crawler._is_category(attr):
            pass
          elif attr[1] not in self._crawled:
            self._crawled.append(attr[1])
            self.crawl(attr[1])

# Example 2
def crawl(self, url):
    urls = Queue(-1)
    _crawled = []
    urls.put(url)
    while not urls.empty():
      url = urls.get()
      links = BeautifulSoup(urllib2.urlopen(url)).findAll(Crawler._match_tag)
      for link in links:
        for attr in link.attrs:
          if Crawler._match_attr(attr):
            if Crawler._is_category(attr):
              continue
            else:
              Crawler._visit(attr[1])
              if attr[1] not in _crawled:
                urls.put(attr[1])
# Example 3
def crawl(self, url):
    "Get all URLS from which to scrape categories."
    links = BeautifulSoup(urllib2.urlopen(url)).findAll(Crawler._match_tag)
    while len(links) > 0:
        link = links.pop()
        for attr in link.attrs:
            if Crawler._match_attr(attr):
                if Crawler._is_category(attr):
                    pass
            elif attr[1] not in self._crawled:
                self._crawled.append(attr[1])
                links = get_links(attr[1]) + links

#Python Example Files with 4 functions
import pandas as pd
import matplotlib.pyplot as plt

def clean_data(data):
    data = data.drop_duplicates()
    data.dropna(inplace=True)
    data = data.where(data['catagory']=='other')
    return data

def explore_data(data):
    print(data.info())
    print("average price: "+str(data['price'].mean()))
    print("max price: "+str(data['price'].max()))
    print("quantity: "+str(len(data)))

def train_model(data):
    data = clean_data(data)
    x = data.drop(['price'])
    y = data['price']
    model = LogisticRegression()
    model.train_n_folds(x,y,fold = 5)
    return model

def validate_model(test_data,model):
    test_data = clean_data(test_data)
    x = test_data.drop(['price'])
    y = test_data['price']
    predicted = model.predict(x)
    accuracy = (predicted == y).mean()
    return accuracy


import pandas as pd
import matplotlib.pyplot as plt

def clean(data):
    data = data.drop_duplicates()
    data.fillna(0,inplace=True)
    data = data[data['catagory']=='other'].copy()
    return data

def explore(data):
    print(data.info())
    print("mean price: "+str(data['price'].mean()))
    print("max price: "+str(data['price'].max()))
    print("quantity: "+str(len(data)))

def train(data):
    data = clean_data(data)
    x = data.drop(['price'])
    y = data['price']
    model = LogisticRegression()
    model.train_n_folds(x,y,fold = 5)
    return model

def validate(test_data,model):
    test_data = clean_data(test_data)
    x = test_data.drop(['price'])
    y = test_data['price']
    predicted = model.predict(x)
    accuracy = (predicted == y).mean()
    return accuracy
