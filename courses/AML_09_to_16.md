# Applied Machine Learning (Lectures 9 to 16)
- Course:  https://www.cs.columbia.edu/~amueller/comsw4995s19/schedule/


## Lectures
9.  Gradient Boosting; Calibration

---

# Lecture 9
[video](https://www.youtube.com/watch?v=OC3qmxGh2gc&list=PL_pVmAaAnxIQGzQS2oI3OWEPT-dpmwTfA&index=9)

## Intro
- Gradient boosting, a method used with decision trees
- widely used method
- used to power a lot of decision making on internet, like FB timeline; now they generally use neural networks

## Boosting (in General)
- also an ensemble technique, but smarter than doing bagging 
- in boosting:  each model is very weak so averaging them will not do it; instead

## Gradient Boosting Algorithm
- you try to fit the residual

## Gradient Boosting Advantages
- Slower to train than random forests (if using "old" `GradientBoostingRegressor`), but much faster to predict than Random Forests
  - trees are usually shallow, and we need fewer of them random forests
  - trees are much simpler, because we are conditionally building the trees 
- Very fast using XGBoost, LightGBM, pygbm, new scikit-learn implementation #12807
- Small model size
- Typically more accurate than random forests
