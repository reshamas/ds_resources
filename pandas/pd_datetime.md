
[Pandas: create timestamp from 3 columns: Month, Day, Hour](http://stackoverflow.com/questions/26137946/pandas-create-timestamp-from-3-columns-month-day-hour)



```bash
df['DateTime'] = df[['Year', 'Month', 'Day', 'Hour']].apply(lambda s : datetime.datetime(*s),axis = 1)
```

