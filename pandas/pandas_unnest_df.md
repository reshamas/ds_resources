
```bash
df_new = df.groupby('movie').actor.apply(lambda x: pd.DataFrame(x.values[0])).reset_index().drop('level_1', axis = 1)

df_new.columns = ['movie','actor']

df_new.head()
```

[Flatten a column with value of type list while duplicating the other column's value accordingly in Pandas](
http://stackoverflow.com/questions/21160134/flatten-a-column-with-value-of-type-list-while-duplicating-the-other-columns-va)

