# Jeremy Howard:  A short introduction to LaTeX and Overleaf

## Video (14 minutes)

- Video link:  https://youtu.be/dkojsBJ-S-g

[![Latex](https://img.youtube.com/vi/dkojsBJ-S-g/0.jpg)](https://youtu.be/dkojsBJ-S-g "Intro to LaTeX and Overleaf")

## Notes
- Website:  https://www.overleaf.com/
- Overleaf Templates  
  1.  Templates: https://www.overleaf.com/latex/templates
  2.  Select template
  3.  "Open as Template"
  4.  

### Editing document
- find `\begin{abstract}`
- "Recompile" creates updated pdf file of document
- Can type papers into "Source" or "Rich Text Format" views
- "Rich Text" view is helpful for formatting:  bold, italics, bulleted list, etc


### Bulleted List
```latex
\begin{itemize}
\item First
\item Second
\end{itemize}
```

### putting text in quotes
```latex
\say{very high level of mask use.} 
```
will show this:
```text
“very high level of mask use.” 
```


## Doing Citations in `template.tex` file
-  (can change file name from template)

### Citing inside the text of a paragraph
- something you would use in the body of the text

```latex
\citet xxx
```

### Citing in parentheses at end of a paragraph

```latex
\citep xxx
```

Note:  you can put more than one reference; separate by comma

### Citing:  will give long list of citations available 
Type below + <enter>
  
```latex
\citep{
```
NOTE:  Citation will also automatically be added to end of paper under "References"

### Citations
Citations are in a file known as BibTeX format, and that file is named "references.bib" 

### Adding new citations to the `*.bib` file
1. Go to Google Scholar:  https://scholar.google.com/
2. Click on 3 lines at top left of page.  Go to "Settings".  Under "Bibliography Manager", select "Show links to import citations into BiBTeX"
3. Save
4. Go back to Google Scholar
5. Search for a paper.  Example:  Setting Priorities to Address Research Gaps in Long-term COVID-19 Outcomes in Children
6. At search result, go to bottom right, select "Import into BibTeX"
7. Check box for "I'm not a robot."
8. copy the citation.  here is an example
```text
  @article{munblit2021setting,
  title={Setting priorities to address research gaps in long-term COVID-19 outcomes in children},
  author={Munblit, Daniel and Sigfrid, Louise and Warner, John O},
  journal={JAMA pediatrics},
  year={2021}
}
```
9. Copy and paste above into the file `references.bib`
  
## Download compiled version of paper
1. Go to "Menu" (top left corner)
2. Download / PDF
3. Download / Source (if you would like to submit a LaTeX file)

## Working Collaboratively
1. Go to upper right menu
2. Select "Share"

### To track changes
1. Go to upper right menu
2. Click "Review"
3. As owner of file, can see option to enable "Track changes for Everyone"

  
### To add comments
1.  Highlight text in source file
2.  Should see a gray box option on upper right for "Add comment"
3.  Option: can double click on a word and then "Add comment"
  
### To see changes
- select "Overview" on bottom right.  Note: this option may only be available to owners / editors of the file.
  
  






