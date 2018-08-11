# Decision Tree

## Single
- use complete training dataset

## Bagging
- random sampling with replacement
**Bagging** means randomly extracting smaller datasets (we refer to them as bags of data) from the main training dataset and constructing a separate decision tree for each bag

## Boosting
- random sampling with replacement over weighted data
- In Boosting algorithms each classifier is trained on data, taking into account the previous classifiers’ success. After each training step, the weights are redistributed. Misclassified data increases its weights to emphasise the most difficult cases. In this way, subsequent learners will focus on them during their training.



## Resources
- [Bagging, Boosting, Stacking](https://stats.stackexchange.com/questions/18891/bagging-boosting-and-stacking-in-machine-learning)
- [What is the difference between Bagging and Boosting?](https://quantdare.com/what-is-the-difference-between-bagging-and-boosting/)
