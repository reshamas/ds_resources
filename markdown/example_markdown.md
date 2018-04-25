# [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)  

In a markdown file on GitHub, to see how it was formatted, click on "raw" on upper right corner.

---

# Table of Contents

[1. Text Formatting](#section-1)  
[2. Headers](#section-2)  
[3. Line Breaks](#section-3)  
[4. Links](#section-4)  
[5. Inline Code](#section-5)  
[6. Images](#section-6)  
[7. Emojis](#section-7)  
[8. Tables](#section-8)  

---
## <a name="section-1"></a>1.  Text Formatting

bold: `**bold**`  **bold**  
italic:  `*italic*` *italic*  
italic:  `_italic_` _italic_  
strikethrough:  `~~strike thru~~` ~~cross out~~


---
## <a name="section-2"></a>2.  Headers

```
# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6
```
# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

---
## <a name="section-3"></a>3.  Line Breaks

How to add line breaks:  
1.  can enclose text in triple back quotes  
2.  add two spaces to end of line

---
## <a name="section-4"></a>4.  Links

```text
[Google website](https://www.google.com/)
```
results in:  
[Google website](https://www.google.com/)


---
## <a name="section-5"></a>5.  Inline Code

```text
`text`
```
`text`

---
## <a name="section-6"></a>6.  Images
Format: `![Alt Text](url)`    
```text
![Ben Franklin quote](images/ben_franklin_teach.jpg)
```

![Ben Franklin](images/ben_franklin_teach.jpg)


---
## <a name="section-7"></a>7.  Emojis

typing this:  
```
:smiley:
```
results in:  
:smiley:

---

## <a name="section-8"></a>8.  Tables in Markdown
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


---

## Bullet Points 

Fruit Types I
- apple
- banana
- pear

Fruit Types I
+ apple
+ banana
+ pear

Fruit Types II
* apple
* banana
* pear

Fruit Types III  

1. apple
2. banana
3. pear

Produce   
- fruit
    - apple
    - banana
    - orange
- vegetable
    - carrot
    - celery
    - onion
    
## Checklist

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

---

## Block Code, Language-specific 

### python

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

## bash or console

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

## SQL

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

## Tables II
```html
<h1 > test </h1>
<p> xxxxxxxxx
xxxxxxxxx</p>
<table>
    <tr>
        <td>Foo</td>
    </tr>
        <tr>
        <td>Foo</td>
    </tr>
</table>
```

<h1 > test </h1>
<p> xxxxxxxxx
xxxxxxxxx</p>
<table>
    <tr>
        <td>Foo</td>
         <td>Foo</td>
          <td>Foo</td>
    </tr>
        <tr>
        <td>Foo</td>
    </tr>
</table>



---

## Indenting
> indent at one level
>> indent at two levels

>>text, test, test, test, test


```console
print "hello world!"
```

>>print "hello" world

```
print "hello world!"
```

```html
<p>printing a paragraph in HTML! </p>
```

