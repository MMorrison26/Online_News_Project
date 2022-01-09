# Online_News_Project

## Selected Topic: Online News Popularity

## Group Members:

Bailey Lantrip, David Gae, Maddie Back, Melanie Kelsie, Michelle Morrison, and Rachel Krasner

### Reason we selected it: 

We had 2 former ideas, one of which had data that was too outdated and the latter had a data source without enough rows to successfully put through Machine Learning. With how much we're all inundated with news on various platforms each day, this dataset piqued our interest as something relevant and intriguing. 

### Description of the data source:

David identified an excellent source from the UCI Machine Learning Repository. This is one of their 422 available data sets. It's from 2015 and has about 40,000 rows of data, which will be ideal for training and test sets.

### Questions we hope to answer:

* What components contribute towards a popular online news article?
* Is there an ideal article length that attracts readers?
* How often does a positive rating translate to sharing the article?
* Length of words, are the more simply stated articles more shareable?
* Is it when it is published?
* Is it the title length?
* Is it the words in the content?
* Is it the positive or negative words in the article?
* Looking at keywords. Are they tagging it accurately?
* Do images or videos predict whether it is shared more?
* Looking at polarity in the text? Are they polarizing articles meant to be provocative?
* Data channel: Are certain data channels more popular for sharing than others?
* Do images or videos in the article effect whether it is shared?

### Description of communication protcols:

We are using our Slack project channel, our GitHub repository, and Zoom as necessary - sometimes with all 5 of us and sometimes grouped by our role for the week.

### Database Integration:
After opening the orginal csv file and taking a look at the general structure, we determined that a good place to begin is by building a Entity Relational Diagram (ERD) as seen below:

<p align='center'>
	<img src="https://github.com/MMorrison26/Online_News_Project/blob/Database_RKrasner/News_ERD.png" alt="ERD" width= 800>
</p>

Corresponding tables are built into PgAdming with the .sql file saved for future reference. Likewise, the original data file was parsed down into smaller csv files which correspond to the SQL tables.

## Machine Learning ideas:
Regression Model
Trying to predict which ones will be the most shared and most popular?
Determining if certain words or phrases tend to be shared more often?
Do the more polarizing articles get shared more?
Does positive sentiment or negative sentiment make it more shareable?

#### list out the values
list1 = []
for i,j in enumereate(online_news_df.columns.tolist()): <br>
	list1.append(i) <br>
	print
	
#### Create dataframe1 of heatmap
ax = sns.heatmap(list1, linewidth=0.5) <br>
plt.show() <br>

#### Pick the columns with the values that are within treshold high 
for i, j in enumerate(online_news_df): <br>

	df1 = online_new_df.iloc[i,i]>1 
#### Pick the columns with the values that are within treshold mid
	df2 = online_new_df.iloc[i,1]>0.5 
#### Pick the columsn with the values that are within treshold low 
	df3 = online_new_df.iloc[i,1]>0.1 

#### Then perform normalization of the data 

#### linear relationship beteween the testable set vs training set.

### Visualization:
Looking to create visualizations on Tableau. 
Bar chart with the days of the week that the articles were published. 

Scatter plot comparing number of words in the titles (or content) compared to the amount of shares. 

Scatter plot mapping amount of negative words and amount of positive words and if it correlates to the share amount. 

A bar chart showing which data channels have the highest amount of shares.


