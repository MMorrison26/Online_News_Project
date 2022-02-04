# Online_News_Project

## Selected Topic: Online News Popularity

### [Link to Google Slides](https://docs.google.com/presentation/d/17hTziRvz6Hiwmy3satv0QTVF8MOqUpNktrlUoLgleyA/edit?usp=sharing)

### [Link to Speaker Notes](https://docs.google.com/document/d/1dMr3w5vUDnTF2nDPOCFyYVvh601HJGGX5PXfk2yleKM/edit?usp=sharing)

## Group Members:

* Bailey Lantrip (Database/Database/GitHub) 
* David Gae (Machine Learning/Machine Learning/Technology)
* Maddie Back (Technology/GitHub/Machine Learning)
* Melanie Kelsey (Machine Learning/Technology/Database) 
* Michelle Morrison (GitHub/Machine Learning/Database) 
* Rachel Krasner (Database/Database/Machine Learning)

### Reason we selected it: 

We had two former ideas, one of which had data that was too outdated and the latter had a data source without enough rows to successfully put through Machine Learning. With how much we're all inundated with news on various platforms each day, this particular dataset piqued our interest as something relevant and intriguing, while also offering a large set of data to examine for our project. 

### Description of the data source:

David identified an excellent source from the UCI Machine Learning Repository: [Link](https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity). This is one of their 422 available data sets. It's from 2015 and has about 40,000 rows of data, which will be ideal for training and test sets. 58 of the 61 columns can be used as possible predictive topics, 2 are non-predictive, and 1 column is the goal field of # of shares.

### Project Outline

1. **Introduction to Project**
    * Selected Topic & Why
    * Description of datasource
    * Questions to be Answered in our Presentation
    * Overview of data exploration & analysis 
2. **Database Integration**
    * Created Postgres database hosted by AWS
    * Connected PgAdmin to our RDS instance (news-data)
    * Uploaded our clean data into AWS S3 bucket
    * Started a Spark session to write into Postgres database
    * Using PySpark, we read in our S3 link and loaded into a DataFrame
    * Performed transformations on the DataFrame to match the AWS tables
    * Connected to the database and loaded into the tables
4. **Develop data in Pandas Python file:**
    * Read csv dataset into Pandas Dataframe
    * Remove any unnecessary columns
    * Bucket "shares" column into bins for measuring "popularity." 
    * Split data into Training and Test sets
    * Define our features
    * Train the model
    * Fit the model
    * Make predictions
    * Calculate the confusion matrix
    * Calculate the balanced accuracy score
    * Print the imbalanced classification report
5. **Develop visualizations to tell our story**
    * Graph showing Article Shares per Category
    * Graph showing Number of Articles per Category
    * Graph showing Percent Popularity by Category
    * Graph showing Positive/Negative Words vs. Popularity
    * Graph showing Global Subjectivity vs. Popularity 
    * Graph showing # Images/Videos vs. Popularity
    * Graph showing Number of Words per Article vs. Popularity



### Database Integration:
After opening the original csv file and taking a look at the general structure, we determined that a good place to begin is by building an Entity Relational Diagram (ERD) as seen below. From there we created a Postgres database hosted by Amazon Web Services and connected PgAdmin to the RDS instance. After writing a query to create empty tables, we uploaded the data into an AWS S3 bucket. We started a Spark session to write directly into Postgres and read in the S3 link using PySpark. We performed transformations on the DataFrame to match the tables in the AWS RDS database and finally connected to the database and loaded the DataFrames into the tables.

<img width="1231" alt="News_ERD" src=https://github.com/MMorrison26/Online_News_Project/blob/main/Database/image%20Files/ERD.png>

### Machine Learning Model

A big part of our preprocessing was deciding if we wanted to keep all original 61 columns. Initially we honed in on about 7 attributes but decided that predictability is better the more attributes we have contributing to the model. From here, we bucketed the "shares" column into "Popular" and "Not Popular" based on the number of shares per day that fell into the 75th percentile or higher. 

We used the "Train Test Split" code to split our 40,000 rows of data into the default test size of 25% (10,000 rows) while the remaining 75% (30,000 rows) are used for training. The model uses the training dataset to learn, and then it uses the testing dataset to assess its performance. The model takes our X input and our y output and splits each into training/testing sets, so we end up with 4 total sets. After testing Logistic Regression and Random Forest, we ultimately decided to go with the Balanced Random Forest Classifier model for our project. This had the highest balanced accuracy score (78%).

#### Data Limitations

We are realizing there might be an element of random chance when it comes to which articles will "go viral" and which will not. You can see from the screen shot below, there is no one predictor that stands out for accurately predicting popularity/shareability. Even when we reran the model with the top 3 and again with the top 7 attributes showing significance, the balanced accuracy score went down. 
 
<img width="600" alt="Features Importance Rank" src="https://github.com/MMorrison26/Online_News_Project/blob/main/Machine%20Learning/ML_feature_importance.png">

Additionally, even though we had a good amount of data, if we wanted to look at the highly shared outlier subset, there was not a large enough set of outliers to run a machine learning model solely on those articles. So ultimately, we were left to examine all the articles in the dataset which covered a huge spread.

### Dashboard

Our final Tableau site up and running with 9 sheets and various visualizations. Each sheet looks at 1 of the questions we originally asked, seeing if we can pinpoint a notable predictor. Feel free to use the interactive filters to view specific popularity bins. While there is a lot of interesting information in our dataset, we're not convinced of overall trends based on these illustrations. 
#### [Link to Tableau](https://public.tableau.com/app/profile/maddie4284/viz/Online_News_Popularity/Online_News?publish=yes)



### Technologies Used:

#### Data Cleaning and Analysis
Luckily the dataset we used has all numeric values in the columns, so it was an easier clean up process. To do the clean-up we used pandas in ***Jupyter Lab*** and ***Google Colab*** to run the Machine Learning code.   

#### Database Storage
We decided to load the dataset into ***Postgres*** as the tool. Here we have created a relational database where we will create multiple tables for the separate information from the original dataset. From there we created an ***AWS*** connection.

#### Machine Learning
The many columns with different attributes can all be looked at as independent variables, which is why we want to use a Machine Learning Model that is built specifically for that. While a Regression Model was intriguing to show a prediction on the number of shares, we are currently using a ***Random Forest Classifer Model*** to identify "Popular" vs. "Not Popular." 

#### Dashboard
To present our findings, we will create visualizations on ***Tableau***. With this tool we have started to create different scatterplots and bar charts to show our findings to our questions.
