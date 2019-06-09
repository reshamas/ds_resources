# Applied Machine Learning
- Course:  https://www.cs.columbia.edu/~amueller/comsw4995s19/schedule/


## Progress
1. Intro
2. Git, GitHub and Testing
3. Matplotlib and Visualization
4. Intro to Supervised Learning
5. Preprocessing
  - https://github.com/amueller/COMS4995-s19/blob/master/slides/aml-05-preprocessing/aml-07-preprocessing.ipynb
6. Linear Models for Regression
7. Linear Models for Classifications, SVMs
8. Trees, Forests and Ensembles

### Notes
- Parametric model example:  linear
  - assume underlying statistical distributions in the data.
- Non-parametric model example
  - do not rely on any distribution
  - decision tree
  - random forest
  - rank test

## Scaling
- it's not useful to have data on different scales, because the algorithm will implicitly assign different importance to different features in an arbitrary way

### `StandardScaler`
- also called "Z Score" which is ~N(0,1)
- makes sense for Gaussian data
- most commonly used 
- use this scaling by default

### `MinMaxScaler`
- usually between (0, 1); can also do (-1, 1)
- more useful if you have fixed boundaries or a fixed range (not great if you have outliers in data)


### `RobustScaler`
- similar to `StandardScaler` but this one uses **medians and quantiles**
- useful if there are strong outliers

### `Normalizer`
- used with count data
- works on each row individually
- 

#### Good Practice
- put scaling and other pre-processing within cross-validation
- don't want to do scaling with sparse data (includes:  NLP, genetics)
  - only scale, don't center, use `MaxAbsScaler` 

### `StandardScaler` example
- default test split is 25%  (https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html)
- `scaler.fit(X_train)` computes the **mean** and **standard deviation** on the training dataset
- `X_train_scaled = scaler.transform(X_train)` this will subtract the mean, divide by the standard deviation; this is the scaled dataset
- **Important:** 
  - we only call `fit` on the training dataset.  (Else, if you apply different transformations, weird things will happen.)
  - never call `fit` on any test data
  
```python
from sklearn.linear_model import Ridge
X, y = boston.data, boston.target
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0)

scaler = StandardScaler()
scaler.fit(X_train)
X_train_scaled = scaler.transform(X_train)
ridge = Ridge().fit(X_train_scaled, y_train)

X_test_scaled = scaler.transform(X_test)
ridge.score(X_test_scaled, y_test)
```

## do Preprocessing *after* splitting the data
- proprocessing (other than **scaling**):  PCA, feature selection

### Leaking
- 

## Ordinal Encoding
```python
df_ordinal = df.copy()
df_ordinal['boro'] = df.boro.astype("category").cat.codes
df_ordinal
```
Note:  Don't do this.  Use **one hot encoding** instead.

```bash
boro	vegan
0	2	No
1	3	No
2	2	No
3	1	Yes
4	1	Yes
5	0	No
```

## New Mode
- `OneHotEncoder` is deprecated.  Do not use.  
- New mode: always transforms all columns
- new version can work on strings
- 

```python

from sklearn.compose import make_column_transformer
from sklearn.linear_model import LogisticRegression
# The Future!

categorical = df.dtypes == object
preprocess = make_column_transformer(
    (StandardScaler(), ~categorical),
    (OneHotEncoder(), categorical))
model = make_pipeline(preprocess, LogisticRegression())
```
- for working with a feature such as zip codes, rather than using zip codes directly, use the average, say "income" (or whatever data is available) per zip code.  Also, be sure to exclude the specific data point for which you are computing the average income per data point, because that results in **data leakage** (particularly when a zip code only has one data point.
- 
 
## Box-Cox Transformation
```python
from sklearn.preprocessing import PowerTransformer
fig, axes = plt.subplots(3, 5, figsize=(20, 10))
pt = PowerTransformer()
X_bc = pt.fit_transform(X_train_mm)
print(pt.lambdas_)

for i, ax in enumerate(axes.ravel()):
    if i > 12:
        ax.set_visible(False)
        continue
    ax.hist(X_bc[:, i], bins="auto")
    ax.set_title("{}: {} {:.2f}".format(i, boston.feature_names[i], pt.lambdas_[i]))
plt.savefig("images/boston_hist_boxcox.png")
```

## Lecture 6:  Linear Models for Regression

### Dealing with Missing Values
- pick up here:  https://www.youtube.com/watch?v=3cZ_ScHonsI&list=PL_pVmAaAnxIQGzQS2oI3OWEPT-dpmwTfA&index=6
- structural missingness:  some reason in the process why the value is missing

#### Different Methods For Imputation (filling in missing values)
1. mean / median
2. kNN (not yet available in scikit-learn, but PR is there)
3. regression models (not yet available in scikit-learn, but PR is there)
4. matrix factorization (not in this lecture)

Note:  an R^2 that is negative means we are doing worse than predicting the mean.

### Elastic Net
- combines Lasso and Ridge regressions

---
## Lecture 7: Linear Models for Classifications, SVMs

## Difference between SVM and Logistic Regression
- interview question used by ACM
- answer:  SVM uses hinge loss, and Logistic Regression uses log loss

### Multiclass Classification
- hack:  reduce multi-class to binary by doing:  **one-vs-rest** OR **one-vs-one**

#### 1-vs-rest
- n binary classifiers (where n = number of classes):  each is trained on the whole dataset
- choose the class with "the highest score"


#### 1-vs-1
- build binary classifier **for each pair of classes**:  n*(n-1)/2  binary classifiers
  - count how often each class was predicted
  - select the most commonly picked class
- trained on balanced datasets

### Multinomial Logistic Regression
- prediction formula is same as 1 vs rest, but here there is a way to jointly optimize them
- nice probabilistic model that gives you a probability for each of the classes


## Linear Models (computational considerations)
- LM are fast, don't usually overfit
- always use linear model **first!**
- never not run a linear model.  there's never an excuse
- linear model gives you a **baseline**

## Solver Choices (doing minimization of loss function for algorithms)
- for regression, when the (# of features) > (# of samples), use `Lars` or `LassoLars`
- for small samples, where n < 10K, linear models work very fast

## Kernel SVMs
 
--
# Lecture 8:  Trees, Forests & Ensembles
video:  https://www.youtube.com/watch?v=_FBgcCbAvig&list=PL_pVmAaAnxIQGzQS2oI3OWEPT-dpmwTfA&index=8

## Trees
- one of most popular algorithms
- benefits:  can model complex non-linear relationships
- a non-parametric model which means they can go grow to be as complex as necessary
- it is possible to `learn` anything with a decision tree
- tree-based models are the most popular models in industry, possibly only competing with neural networks
- advantage:  algorithm doesn't really care how data is preprocessed (not scale or transformations of data)
- advantage:  interpretable, can print out model (depending on size of tree)

## Criteria for Measuring **Impurity** of Tree Node
In the context of general machine learning, the primary reason 0-1 loss is seldom used is that 0-1 loss is not a convex loss function, and also is not differentiable at 0.

### Gini Index
A Gini score gives an idea of how good a split is by how mixed the classes are in the two groups created by the split. A perfect separation results in a Gini score of 0, whereas the worst case split that results in 50/50 classes.

### Cross Entropy
Cross-entropy loss, or log loss, measures the performance of a classification model whose output is a probability value between 0 and 1. Cross-entropy loss increases as the predicted probability diverges from the actual label. So predicting a probability of .012 when the actual observation label is 1 would be bad and result in a high loss value. A perfect model would have a log loss of 0.

## Parameter Tuning
- trees are prone to overfitting
- pre-pruning:  stop the growth of the tree
- post-pruning:  grow a deep tree and prune it back
  - not yet available in sklearn

### Tuning Parameters:  Limit Tree Size
- `max_depth`
- `max_leaf_nodes`
- `min_samples_split` (stop splitting after node has x number of samples left)
- `  impurity_decrease` (only decrease if you can reduce the impurity by this much)
- usually people pick 1 or 2 of these criteria and **grid search** them



[note:  left off on Lecture 8 (pick up at 40:00)]

https://www.youtube.com/watch?v=_FBgcCbAvig&list=PL_pVmAaAnxIQGzQS2oI3OWEPT-dpmwTfA&index=8

### Cons of Trees
- **Instability** can get a completely different model if you rerun it
- there *can be* areas in the tree splits where predictions can be very different
- the areas where there is a lot of training data, the predictions will not differ much
- the areas where it overfits, will be different
- you can compute feature importance with decision trees:  `tree.feature_importances_`;  but, for a single tree, the feature importances are unstable, just as each individual tree is
- trees can directly work with categorical data (vs in regression, we do one-hot encoder)

## Ensemble Methods
- use multiple models and mash them together
- build different models and average the results, or probabilities, or predictions
- `VotingClassifier` can average between decision tree and regression

## Bagging = Bootstrap AGGregration
- Bootstrap:  **sample WITH replacement** until you have as much as the original dataset
  - can do this 100 times; will get 100 models that are slightly different
  - averaging these models will hopefully give you a better model
- `BaggingClassifier`, `BaggingRegressor`

### Trees
- trees are **high variance** which means if you change the dataset a little, you will get a very different model
- example of "high bias":  using a linear model when the separation is not linear
- trees are non-parametric models
- Leo Breiman:  invented random forests

## Random Forests
- build hundreds of trees, maybe thousands
- average them, and the average will be your prediction
- RF averages out any overfitting

## How Random Forests Work:  Randomize in 2 ways
- For each tree:
  - pick bootstrap sample of data
- For each split:
  - pick random sample of features
- More trees are always better

## Tuning Random Forests
- Main parameters:  `max_features`
  - use approx `sqrt(n_features)` for classification
  - approx `n_features` for regression
- n_estimators > 100 (`n_estimators` = # of trees in the forest); default is 10 and will change to 100 in scikit version 0.22
  - source:  https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html
- having several thousand trees is not uncommon
- Prepruning might help, definitely helps with model size
  - if you limit depth or leaf nodes, training can be much faster and resulting model can be smaller

## Extremely Randomized Trees (Extra Trees)
- inject more randomness, but in a different way
- randomly draw threshold for each feature
- faster because no sorting / searching

### Out-of-bag Estimates
- each tree uses only ~66% of the data
- can evaluate it on the rest
- can get away without using a validation set
- can use more data to train your model

## Variable Importance
- would trust the variable importance from random forest output more


