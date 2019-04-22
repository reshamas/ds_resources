
## Part 3:  The Weibull Model

video:  https://campus.datacamp.com/courses/survival-analysis-in-r/the-weibull-model?ex=1

### Why use the Weibull model?

```r
wbmod <- survreg(Surv(time, cens) ~ horTh + tsize, data = GBSG2)

# get coefficients
coef(wbmod)

```
```r
# Weibull model
wbmod <- survreg(Surv(time, cens) ~ horTh, data = GBSG2)

# Retrieve survival curve from model
surv <- seq(.99, .01, by = -.01)
t_yes <- predict(wbmod, type = "quantile", p = 1 - surv,
  newdata = data.frame(horTh = "yes"))

# Take a look at survival curve
str(t_yes)
```

### Steps to produce visualization
1. compute Weibull model
2. decide on covariate combinations to compute survival curves 
3. compute survival curves 
4. create `data.frame` with survival curve information (each line has 1 timepoint for each patient)
5. plot

#### Step 1: compute Weibull model
```r
wbmod <- survreg(Surv(time, cens) ~ horTh + tsize, data = GBSG2 )
```
#### decide on covariate combimations
