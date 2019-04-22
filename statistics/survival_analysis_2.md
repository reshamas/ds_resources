
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
#### decide on covariate combinations
```r
newdat <- expand.grid(
  horTh = levels(GBSG2$horTh),
  tsize = quantile(GBSG2$tsize, probs = c(0.25, 0.50, 0.75))
)
newdat
#>   horTh tsize
#> 1  no    20
#> 2 yes    20
```
#### Step 2: compute survival curves
```r
surv <- seq(.99, .01, by = -.01)
t <- predict(wbmod, type = "quantile", p = 1 - surv, newdata = newdata)

dim(t)
#> [1]  6 99
```
note: each combination of `hortTh` by `tsize` has a row, each `p` has a column  




