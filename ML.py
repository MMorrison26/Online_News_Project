# Import our dependencies
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler,OneHotEncoder
import pandas as pd
import tensorflow as tf
import os
import seaborn as sns

application_df = pd.read_csv("./OnlineNewsPopularity.csv")
application_df.head()

del application_df['url']

list1 = []
#create dataframe1 of heatmap
for i,j in enumerate(application_df):
	list1.append(j)
	datafrm1 = pd.DataFrame(list1)
new1 = datafrm1.dropna().iloc[0,0]
print(new1)
#	ax = sns.heatmap(datafrm1, linewidth=0.5)
#	plt.show()

#pick the columns with the values that are with treshold high 
#for i, j in enumerate(applications_df):
#        df1 = application_df.iloc[i,i]>1
#pick the columns with the values that are with treshold mid
#        df2 = application_df.iloc[i,1]>0.5
#pick the columsn with the values that are with treshold low 
#        df3 = application_df.iloc[i,1]>0.1

#then perform normalization of the data 

#linear relationship beteween the testable est vs training set.
