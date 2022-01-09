# Online_News_Project

## Team Members:
Bailey Lantrip
David Gae
Maddie Back
Melanie Kelsey
Michelle Morrison
Rachel Krasner

## Dataset Description
Online News Popularity Data Set
https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity

This dataset contains a list of almost 40,000 different articles published online by Mashable. It contains 61 columns of data. 58 of those columns can be used as possible predictive topics, 2 are non-predictive and 1 column being the goal field of # of shares. 

### Examples of these attributes:
Number of Words in the Title
Number of links in the article to other articles
Count of keywords in the metadata
Day of week it was published
Count of Positive or Negative words in the article
Number of shares of the articles

## Questions we hope to answer:
Predict what attributes correlate to the highest number of shares of the articles

Questions we can ask:
1) Length of words, are the more simply stated articles more shareable?
2) Is it when it is published?
3) Is it the title length?
4) Is it the words in the content?
5) Is it the positive or negative words in the article?
6) Looking at keywords. Are they tagging it accurately?
7) Do images or videos predict whether it is shared more?
8) Looking at polarity in the text? Are they polarizing articles meant to be provocative?
9) Data channel: Are certain data channels more popular for sharing than others?
10) Do images or videos in the article effect whether it is shared?

## Database Integration:
Looking to load the dataset into PGAdmin.

## Machine Learning ideas:
Regression Model
Trying to predict which ones will be the most shared and most popular?
Determining if certain words or phrases tend to be shared more often?
Do the more polarizing articles get shared more?
Does positive sentiment or negative sentiment make it more shareable?

## Visualization:
Looking to create visualizations on Tableau. 
Bar chart with the days of the week that the articles were published. 

Scatter plot comparing number of words in the titles (or content) compared to the amount of shares. 

Scatter plot mapping amount of negative words and amount of positive words and if it correlates to the share amount. 

A bar chart showing which data channels have the highest amount of shares. 

### Filters:
Days of Week
Data Channel

### Parameters:
Includes Images
Includes Videos
Includes Both
