
## Part 3:  The Weibull Model

video:  https://campus.datacamp.com/courses/survival-analysis-in-r/the-weibull-model?ex=1

### Why use the Weibull model?

```r
wbmod <- survreg(Surv(time, cens) ~ horTh + tsize, data = GBSG2)

```
