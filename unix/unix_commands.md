
## Commands:  clear terminal
| Unix command    |      |
|:------|:-------|
| command k | completely clear shell (reset Terminal) ! |
|    |    |  
|    |    |  
| ctrl d   | logout   |  
| ctrl l   | clear screen   |  
| `clear`   | clear screen (shell)  |  
| `reset`   | clear screen   |   


| Unix command    |      |
|:------|:-------|
| ctrl d   | logout   |  
|    |    |  
| command d  | split terminal   |  
| shift + command + d   | un-split terminal   |  

 
```text 
ctrl+w                        delete word on command line
```

screen 
```bash
screencapture -x -t jpg capture.jpg   #Capture screenshots
```
 
 

---

**print working directory**
```
$ pwd
```

**list all packages**
```
$ pip freeze
```

**create a blank file**
```
$ touch test.txt  # creates blank file
```

**print history of commands**
```
$ less .bash_history     # list of all commands typed in, last 100
$ history
```

**grep search**
```
$grep -R "_django1" ./*          # look for text within a directory and sub-dirs
```

**delete a directory**
```
$ rmdir ds3     # only removes empty directories
rmdir: ds3: Directory not empty

$ rm -rf ds3    # rf = recursive function ; removes non-empty directories
```

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

prints vertically, specifies which are directories
```
$ ls -alF   			
```

print directory contents, with directory names in blue
```
$ ls -Gpl
```


take lines, after row 20,000 and put in new file
````
$ tail -n +20001 mail100k.csv > mail80k.csv
```

take lines 1 to 20,000 and put in new file
```
$ tail -n +1 mail100k.csv | head -n 20000 > mail20k.csv
```


**pull data from url and pipe into a file**
```
curl https://archive.ics.uci.edu/ml/machine-learning-databases/voting-records/house-votes-84.data > house_votes_84.csv
```
