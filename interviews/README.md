# Data Science Interview Questions


## How do you evaluate model performance?
- Reference:  scikit-learn [Model evaluation: quantifying the quality of predictions](https://scikit-learn.org/stable/modules/model_evaluation.html)

## What is REGULARIZATION?
- a technique used to avoid overfitting

## What are some examples of REGULARIZATION?
- Lasso and Ridge
- Dropout in neural networks

## What is difference between LASSO and RIDGE Regularization?
- Reference:  [regularization](../concepts/regularization.md)

### LASSO Regularization (L1)
- also known as **L1**
- drives some weights to 0, so features can be dropped
- minimizes the sum of the loss function

### RIDGE Regularization (L2)
- also knowns as **L2**
- reduces coefficients, but does not make the zero, but has unique solution
- minimizes the **sum of the square** of the distances 


## What is Elastic Net?
- Elastic Net combines L1 and L2

---

## How do you debug in Python?
- Reference:  [%debug OR pdb.set_trace()](../python/debugging_in_python.md)
- Python
  - `%debug`
  - `import pdb`
  - Jupyter Notebook:  `from IPython.core.debugger import set_trace`


## Explain p-value
- Reference:  https://www.youtube.com/watch?v=9jW9G8MO4PQ
- we have null hypothesis
- high p-value:  low surprise
- low p-value: high surprise
- A low p-value makes our default action (or our null hypothesis) not likely to have happened

>Does the evidence we collected make our p-value look ridiculous?

## How do you handle imbalanced data?
- Reference:  [DEALING WITH IMBALANCED DATA: UNDERSAMPLING, OVERSAMPLING AND PROPER CROSS-VALIDATION](https://www.marcoaltini.com/blog/dealing-with-imbalanced-data-undersampling-oversampling-and-proper-cross-validation)
- can oversample or undersample
- recommend oversampling because that way we don't lose any data
- do cross-validation with care; watch for data leakage so the results can be generalizable

## Explain in-sample vs. out-sample
- Reference:  [stack overflow](https://stats.stackexchange.com/questions/260899/what-is-difference-between-in-sample-and-out-of-sample-forecasts)

>Was the particular observation used for the model fitting or not ? If it was used for the model fitting, then the forecast of the observation is in-sample. Otherwise it is out-of-sample.

>If you use data 1990-2013 to fit the model and then you forecast for 2011-2013, it's in-sample forecast. but if you only use 1990-2010 for fitting the model and then you forecast 2011-2013, then it's out-of-sample forecast.

## What is CART ---> Classification and Regression Tree

