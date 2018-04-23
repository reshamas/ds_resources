## [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)  

bold: `**bold**`  **bold**  
italic:  `*italic*` *italic*  
italic:  `_italic_` _italic_  

---

In a markdown file on GitHub, to see how it was formatted, click on "raw" on upper right corner.

---

### Block Code, Language-specific 

#### python

Block code that is non-specific:  
```
print "hello world!"
print "hello moon"
```

Block code that is **python**-specific:  
```python
print "hello world!"
print "hello moon"
```

#### bash or console

Block code that is non-specific:  
```
$ git status
$ git remote -v
```

Block code that is **bash**-specific:  
```console
$ git status
$ git remote -v

$ ps awx | grep mongo
```

#### sql

Block code that is non-specific:  
```
SELECT * FROM Customers WHERE Country='Sweden';
```

Block code that is **sql**-specific:  
```sql
SELECT * FROM Customers WHERE Country='Sweden';
```

#### Yes, this works for scores of other languages:  [Syntax highlighting in markdown](https://support.codebasehq.com/articles/tips-tricks/syntax-highlighting-in-markdown) 

---

### Line Breaks
How to add line breaks:  
1.  can enclose text in triple back quotes  
2.  add two spaces to end of line   

---

### Tables in Markdown
```
First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column
```

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

