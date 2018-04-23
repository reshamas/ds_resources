
```
buckets = [0, 80, 100, 120, 140, 160, 180, 200, 300]
labels = ['0-80', '80-100', '100-120', '120-140', '140-160', '160-180', '180-200', '200+']

df['Runtime_Bin'] = pd.cut(df['Runtime'], buckets, labels=labels)
df = df.sort_values(['Runtime'], ascending=True)
```

Formula for Optimal number of bins for a histogram:  
numBins = 2*IQR(x)/NumDataPts^(1/3)  
IQR (Inter Quartile Range) :

```
iqr = np.subtract(*np.percentile(x, [75, 25]))
```
