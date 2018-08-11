# Correlation

## Pearson  (parametric)
- evaluates the linear relationship between two continuous variables. .

## Spearman Rank (non-parametric)
- this one is non-parametric (do not have to assume normality of data)
- Spearman correlation coefficient is based on the ranked values for each variable rather than the raw data. 
- Spearman correlation is often used to evaluate relationships involving ordinal variables.

Py2
```python
from scipy.stats.stats import pearsonr, spearmanr

corr_pearson = pearsonr(live.agepreg, live.totalwgt_lb) #[0]
corr_pearson_pval = pearsonr(live.agepreg, live.totalwgt_lb)[1]

print 'Pearson Correlation: %.4f  ' %(corr_pearson[0])
print 'Pearson P-value: %16.14f   ' % (corr_pearson_pval)

corr_spearman = spearmanr(live.agepreg, live.totalwgt_lb) #[0]
corr_spearman_pval = spearmanr(live.agepreg, live.totalwgt_lb)[1]

print ' '
print 'Spearman Correlation: %.4f  ' %(corr_spearman[0])
print 'Spearman P-value: %16.14f   ' % (corr_spearman_pval)
```
