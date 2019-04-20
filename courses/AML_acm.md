# Applied Machine Learning
- Course:  https://www.cs.columbia.edu/~amueller/comsw4995s19/schedule/


## Progress
1. Intro
2. Git, GitHub and Testing
3. Matplotlib and Visualization
4. Intro to Supervised Learning
5. Preprocessing



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
