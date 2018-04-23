
```
df = pd.read_csv("../2013_movies.csv")
df["ReleaseDate"] = df["ReleaseDate"].apply(lambda x: dateutil.parser.parse(x))
df["ReleaseDate"] = df["ReleaseDate"].apply(lambda x: x.timetuple().tm_yday)
df.head()
```
