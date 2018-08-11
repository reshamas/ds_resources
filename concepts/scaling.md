# Scaling:  Normalization and Standardization

## What is difference between normalization and standardization?

Two methods are well known for scaling data:
 * Normalization - scales all numerical variables in the range [0,1]
 * Standardization - tranforms values to have zero mean and unit variance.  X ~ N(0,1)

## Scaling and Gradient Descent
- Scaling speeds up gradient descent by making it require fewer iterations to get to a good solution.

## Normalization
Normalization, which scales all numeric variables in the range [0,1]. One possible formula is given by `(x - x_min)/(x_max - x_min)`

### Normalization Limitation
If you have outliers in your data set, normalizing your data will certainly scale the “normal” data to a very small interval. And generally, most of data sets have outliers.


## Standardization
Standardize using mean and standard deviation:  `(x - u)/(sigma)`

### Standardization Limitation
When using standardization, your new data aren’t bounded (unlike normalization)




## Resources
- [Standardization vs Normalization](http://www.dataminingblog.com/standardization-vs-normalization/)

- [Python code for Normalization (MinMaxScaler)](http://scikit-learn.org/stable/modules/preprocessing.html)
