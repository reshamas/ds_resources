tag:  pandas conditional if then loc create new column

```
df_2015.loc[df_2015['home_team_goal'] > df_2015['away_team_goal'], 'hometeam_outcome'] = "w"
df_2015.loc[df_2015['home_team_goal'] < df_2015['away_team_goal'], 'hometeam_outcome'] = "l"
df_2015.loc[df_2015['home_team_goal'] == df_2015['away_team_goal'], 'hometeam_outcome'] = "d"
```


```
# Functions are largely used in Pandas to apply data transformations to each row

def saw_ad_many_times(x):
    return 1 if x >= 6 else 0

nyt['Impressions_categorical']= nyt['Impressions'].apply(saw_ad_many_times).head()
```
