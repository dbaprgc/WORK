#!/usr/bin/env python
# coding: utf-8

# In[1]:

import pandas as pd


# In[2]:


import pandas_datareader as pdr


# In[3]:


import datetime


# In[4]:


# aapl=pdr.get_data_yahoo('AAPL',start=datetime.datetime(2008,1,1), end=datetime.datetime(2012,1,1))


# In[5]:


# aapl.describe()


# In[6]:


# aapl.to_csv('aapl_02_04.csv')


# In[7]:


# download_aapl="02_04CSV.csv"


# In[8]:


# aapl['Change']=aapl.Open - aapl.Close


# In[9]:


# aapl['Pct_Chg']=aapl.Change/aapl.Open


# In[10]:


# import matplotlib.pyplot as plt


# In[11]:


# aapl['Pct_Chg'].plot(grid=True)


# In[12]:


# plt.show()


# In[13]:


def get(tickers, startdate, enddate):
       def data(ticker):
           return(pdr.get_data_yahoo(ticker, start=startdate, end=enddate))
       datas=map(data,tickers)
       return(pd.concat(datas,keys=tickers,names=['Ticker','Date']))
tickers=['MSFT', 'GE', 'KO', 'SPY', 'AAPL', 'VIXY','VOO','BND','CDE']
all_data=get(tickers, datetime.datetime(2000,1,1), datetime.datetime(2022,1,1))
''

# In[14]:


all_data


# In[15]:


all_data['Change']=all_data.Open - all_data.Close
# all_data['Change']=all_data.Close - all_data.Open


# In[16]:


all_data['Pct_Chg']=all_data.Change/all_data.Open
# all_data['Pct_Chg']=all_data.Change/all_data.Close


# In[17]:


all_data.to_csv('C:\\Users\\dbapr\\OneDrive\\Documents\\Training\\Oracle\\data\\stocks.csv')

