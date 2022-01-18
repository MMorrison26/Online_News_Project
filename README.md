# Online_News_Project

## Selected Topic: Online News Popularity

## Group Members:

* Bailey Lantrip (Mockup Database) 
* David Gae (Machine Learning Model)
* Maddie Back (Technology)
* Melanie Kelsey (Machine Learning Model) 
* Michelle Morrison (Repository) 
* Rachel Krasner (Mockup Database)

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

We are using our Slack project channel, our GitHub repository, and Zoom as necessary - sometimes with all 6 of us and sometimes grouped by our role for the week.

### Database Integration:
After opening the orginal csv file and taking a look at the general structure, we determined that a good place to begin is by building an Entity Relational Diagram (ERD) as seen below:

<img width="1231" alt="News_ERD" src="https://user-images.githubusercontent.com/87578449/148697873-3c9c78f5-ac67-4dad-a68a-0364703f1f22.png">

Corresponding tables are built into PgAdmin with the .sql file saved for future reference. Likewise, the original data file was parsed down into smaller csv files, which correspond to the SQL tables.

### Machine Learning Model:
We will be using a K Means Clustering Model to see which dependent variables affect the popularity and shareability of an article. Below is a brief outline of some of the steps we will be taking in our Machine Learning Model:

application_df = pd.read_csv("./OnlineNewsPopularity.csv") <br>
application_df.head() <br>
#remove url <br>
del application_df['url'] <br>

#creating a list header <br>
print(list(application_df.columns.values)) <br>


list1 = [] <br>
#keep these concepts for machine learning. <br>
for i, j in enumerate(application_df.iloc[:,6]): <br>
   if j > 0.5: <br>
      list1.append(j) <br>
   elif j < 0.5: <br>
      list1.append(j) <br>
   elif j < 0.1: <br>
      list1.append(j) <br>
print(list1) <br>

#### Create Dataframe1 of Heatmap <br>
ax = sns.heatmap(list1, linewidth=0.5)  <br>
plt.show() <br>

### Visualization:
We will be creating visualizations on Tableau:
* Bar chart with the days of the week that the articles were published
* Scatter plot comparing number of words in the titles (or content) compared to the amount of shares
* Scatter plot mapping amount of negative words and amount of positive words and if it correlates to the share amount
* Bar chart showing which data channels have the highest amount of shares

### Technologies Used:

#### Data Cleaning and Analysis
Luckily the dataset we are using has all numeric values in the columns, so it will be an easier clean up process. To do the clean-up we will use pandas in ***Jupyter Lab***.   

#### Database Storage
We have decided to load the dataset into ***PGAdmin*** as the tool. Here we have created a relational database where we will create multiple tables for the separate information from the original dataset. 

#### Machine Learning
The many columns with different attributes can all be looked at as independent variables, which is why we want to use a Machine Learning Model that is built specifically for that. While a Regression Model can show us the relationship between the variables, we can also use a Clustering Model to see which attributes are most together. We have decided the ***clustering*** approach may be a good way to help visualize how these attributes group together. 

#### Dashboard
To present our findings, we will create visualizations on ***Tableau***. With this tool we can create different scatterplots and bar charts to show our findings to questions including (but not limited to). See Visualizations section above. 
