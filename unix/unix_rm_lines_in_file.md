
**remove first line of file**
```
$ tail -n +2 mailing100k.csv > mail100k.csv
```

**get number of lines in file**
```
$ wc -l filename.txt    # get number of lines in a specific file
$ wc -l tweets.json

$ wc -l *               # get line numbers of all files in directory
```

take lines, after row 20,000 and put in new file
````
$ tail -n +20001 mail100k.csv > mail80k.csv
```

take lines 1 to 20,000 and put in new file
```
$ tail -n +1 mail100k.csv | head -n 20000 > mail20k.csv
```

