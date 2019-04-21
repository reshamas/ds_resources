# Applied Machine Learning
- Course:  https://www.cs.columbia.edu/~amueller/comsw4995s19/schedule/


## Progress
1. Intro
2. Git, GitHub and Testing
3. Matplotlib and Visualization
4. Intro to Supervised Learning
5. Preprocessing
  - https://github.com/amueller/COMS4995-s19/blob/master/slides/aml-05-preprocessing/aml-07-preprocessing.ipynb



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


