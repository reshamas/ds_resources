# Decision Tree

## Single
- use complete training dataset

## Bagging
- random sampling with replacement
- **Bagging** means randomly extracting smaller datasets (we refer to them as bags of data) from the main training dataset and constructing a separate decision tree for each bag

## Boosting
- random sampling with replacement over weighted data
- In Boosting algorithms each classifier is trained on data, taking into account the previous classifiers’ success. After each training step, the weights are redistributed. Misclassified data increases its weights to emphasise the most difficult cases. In this way, subsequent learners will focus on them during their training.

## Entropy
- entropy is an expression of the disorder, or randomness of a system, or of the lack of information about it. The concept of entropy plays a central role in information theory.
- A branch with entropy of 0 is a leaf node.
- A branch with entropy more than 0 needs further splitting


## Resources
- [Bagging, Boosting, Stacking](https://stats.stackexchange.com/questions/18891/bagging-boosting-and-stacking-in-machine-learning)
- [What is the difference between Bagging and Boosting?](https://quantdare.com/what-is-the-difference-between-bagging-and-boosting/)
