
[Format / Suppress Scientific Notation from Python Pandas Aggregation Results](http://stackoverflow.com/questions/21137150/format-suppress-scientific-notation-from-python-pandas-aggregation-results)

```
pd.set_option('display.float_format', lambda x: '%.3f' % x)
```

