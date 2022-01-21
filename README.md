# Online_News_Project

## Selected Topic: Online News Popularity

## Group Members:

* Bailey Lantrip (Database)
* David Gae (Machine Learning)
* Maddie Back (Github Repository)
* Melanie Kelsey (Technology)
* Michelle Morrison (Machine Learning)
* Rachael Krasner (Database)

### Description of communication protcols:

We are using our Slack project channel, our GitHub repository, and Zoom as necessary - sometimes with all 6 of us and sometimes grouped by our role for the week.

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
    * Graph showing Words in the Title vs. Popularity
    * Graph showing Day Published vs. Popularity
    * Graph showing Polarity vs. Popularity
    * Graph showing Positive/Negative Rate vs. Popularity
    * Graph showing # Images vs. Popularity

### Machine Learning Model

A big part of our preprocessing was honing in on the columns we wanted to keep of the original 61 columns. We kept the main ones pertaining to token count, included images, days of publication, positive/negative rating, polarity, and number of shares - which brought the column count down to 25. From here, we bucketed the "shares" column into "Shareable" and "Not Shareable" based on the number of shares that fell into the 75th percentile or higher. 

We used the generic "Train Test Split" code to split our 40,000 rows of data into the default test size of 25% (10,000 rows) while the remaining 75% (30,000 rows) are used for training. After testing Logistic Regression and Random Forest, we ultimately decided to go with the Balanced Random Forest model for our project. This had the highest balanced accuracy score (of only 60%).

#### Data Limitations

We are realizing there might be an element of random chance when it comes to which articles will "go viral" and which will not. You can see from the screen shot below, there is no one predictor that stands out for accurately predicting popularity/shareability. Even when we reran the model with the top 3 and again with the top 7 attributes showing significance, the balanced accuracy score went down.

![image](https://user-images.githubusercontent.com/87578449/149640612-42e188c6-4b98-4b68-a5ad-aafcc0d5639f.png)

### Dashboard

We have a preliminary Tableau site up and running with 6 sheets and various visualizations. We will be narrowing them down in the coming weeks to flesh out final story. See link below.

https://public.tableau.com/app/profile/maddie4284/viz/Online_News_Popularity/Online_News?publish=yes 


