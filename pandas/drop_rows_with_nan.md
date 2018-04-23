```python
df_new = df.dropna(thresh=19) # 19 is the number of columns in df
for i in df_new.columns:
    print(i, (df_new[i].isnull().sum())/len(df_new))
```
