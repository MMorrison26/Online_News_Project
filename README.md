# Online_News_Project

## Selected Topic: Online News Popularity

## Group Members:

Bailey Lantrip, David Gae, Maddie Back, Melanie Kelsie, Michelle Morrison, and Rachel Krasner

### Reason we selected it: 

We had 2 former ideas, one of which had data that was too outdated and the latter had a data source without enough rows to successfully put through Machine Learning. With how much we're all inundated with news on various platforms each day, this dataset piqued our interest as something relevant and intriguing. 

### Description of the data source:

David identified an excellent source from the UCI Machine Learning Repository: https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity. This is one of their 422 available data sets. It's from 2015 and has about 40,000 rows of data, which will be ideal for training and test sets. 58 of the 61 columns can be used as possible predictive topics, 2 are non-predictive, and 1 column is the goal field of # of shares.

### Questions we hope to answer:

* What components contribute towards a popular online news article?
* Is there an ideal article length that attracts readers?
* How often does a positive rating translate to sharing the article?
* Are the more simply stated articles more shareable?
* Is popularity based on when it was published?
* Are positive or negative words predictive in popularity?
* Do images or videos predict whether it is shared more?
* Are the polarizing articles meant to be provocative and spark more interest?
* Are certain data channels more popular for sharing than others?

### Description of communication protcols:

We are using our Slack project channel, our GitHub repository, and Zoom as necessary - sometimes with all 5 of us and sometimes grouped by our role for the week.

### Database Integration:
Looking to load the dataset into PGAdmin. See preliminary relational database below that we'll be organizing.

### Machine Learning ideas:
We will be using a K Means Clustering Model to see which dependent variables affect the popularity and shareability of an article. Below is a brief outline of some of the steps we will be taking in our Machine Learning Model:

#### List out the Values
list1 = []
for i,j in enumereate(online_news_df.columns.tolist()): <br>
	list1.append(i) <br>
	print
	
#### Create Dataframe1 of Heatmap
ax = sns.heatmap(list1, linewidth=0.5) <br>
plt.show() <br>

#### Pick the Columns with the Values that are within Threshold High 
for i, j in enumerate(online_news_df): <br>

	df1 = online_new_df.iloc[i,i]>1 
#### Pick the columns with the values that are within Threshold Mid
	df2 = online_new_df.iloc[i,1]>0.5 
#### Pick the columsn with the values that are within Threshold Low 
	df3 = online_new_df.iloc[i,1]>0.1 

#### Perform Normalization & Find Linear Relationship between Training and Test Set 

### Visualization:
We will be creating visualizations on Tableau:
* Bar chart with the days of the week that the articles were published
* Scatter plot comparing number of words in the titles (or content) compared to the amount of shares
* Scatter plot mapping amount of negative words and amount of positive words and if it correlates to the share amount
* Bar chart showing which data channels have the highest amount of shares


