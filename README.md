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

1. Read csv dataset into Pandas Dataframe
2. Remove any unnecessary columns
3. Bucket "shares" column into bins for measuring "popularity." 
4. Split data into Training and Test sets
5. Define our features
6. Resample data using SMOTEENN
7. Train the model
8. Display the confusion matrix
9. Calculate the balanced accuracy score
10. Print the imbalanced classification report

### Machine Learning Model

A big part of our preprocessing was honing in on the columns we wanted to keep of the original 61 columns. We kept the main ones pertaining to token count, included images, days of publication, positive/negative rating, polarity, and number of shares - which brought the column count down to 25. From here, we bucketed the "shares" column into 4 bins: "Less Shareable", "Somewhat Shareable", "Highly Shareable", and "Extremely Shareable" (which included a small number of outliers). 

We used the generic "Train Test Split" code to split our 40,000 rows of data into the default test size of 25% (10,000 rows) while the remaining 75% (30,000 rows) are used for training. After testing Logistic Regression and Random Forest, we ultimately decided to go with the _____________ model for our project. This allows for ____________________.

### Dashboard




