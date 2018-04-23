Unix command line: search within files for keywords

```
# look for text within a directory and sub-directories
# R = recursive

$ grep -R "_django1" ./*   
```

Search in current directory for file names that have 'pdf' and pipe that file name into the file files_pdf.txt  
`
find . | grep "pdf" > files_pdf.txt
`

Search in the directory 'class_lectures'  
`
find class_lectures | grep "ipynb" > files_ipynb.txt
`
