### list out the values
list1 = []
for i,j in enumereate(online_news_df.columns.tolist()): <br>
	list1.append(i) <br>
	print
	
### Create dataframe1 of heatmap
ax = sns.heatmap(list1, linewidth=0.5) <br>
plt.show() <br>

### Pick the columns with the values that are within treshold high 
for i, j in enumerate(online_news_df): <br>

	df1 = online_new_df.iloc[i,i]>1 
### Pick the columns with the values that are within treshold mid
	df2 = online_new_df.iloc[i,1]>0.5 
### Pick the columsn with the values that are within treshold low 
	df3 = online_new_df.iloc[i,1]>0.1 

### Then perform normalization of the data 

### linear relationship beteween the testable set vs training set.