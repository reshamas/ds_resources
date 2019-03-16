# Survival Analysis

- DataCamp course:  [Survival Analysis in R](https://www.datacamp.com/courses/survival-analysis-in-r)
- survival analysis is:  **time to event data**
- time to:
  - death
  - find a new job
  - delivery of letter
  - how long to wait for cab to arrive
  - 
- we can't use linear models because:
  - duration times are always **positive**
  - need to work with distributions 
  - linear model assumes a normal distribution which is not appropriate for positive outcomes
- different **measures** are of interest
  - **hazard functions**
- **censoring** is almost always an issue
  - **right censoring** is the most common type of censoring in survival analysis
- 
  
## Weibull Distribution

  
---

## Getting the data

```r
# GBSG2: time to death of 686 breast cancer patients
data(GBSG2, package = "TH.data")
help(UnempDur, package = "Ecdat")
```

## Creating `Surv` objects
```r
time <- c(5, 6, 2, 4, 4)
event <- c(1, 0, 0, 1, 1)

library("survival")
Surv(time, event)
```

## R packages

#### for analyses:
```r
library("survival")
```

#### for pretty visualizations:
```r
library("survminer")
```


## Censoring
1 = event occurred  

```r
# Count censored and uncensored data
num_cens <- table(GBSG2$cens)
num_cens

# Create barplot of censored and uncensored data
barplot(num_cens)

# Use help() to look at cens
help(GBSG2, package = "TH.data")
```

```
# Create Surv-Object
sobj <- Surv(GBSG2$time, GBSG2$cens)

# Look at 10 first elements
sobj[1:10]

# Look at summary
summary(sobj)

# Look at structure
str(sobj)
```


