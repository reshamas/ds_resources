# Naive Bayes

## About
- based on the so-called Bayesian theorem
- is particularly suited when the dimensionality of the inputs is high
- despite its simplicity, Naive Bayes can often outperform more sophisticated classification methods

## Fundamental Assumption of Naive Bayes
- Features are independent given the class label
- Surprisingly naive bayes performs well even if the features are not independent (inter-correlation among predictor variables may not be as strong)

## Info
- handles multi-class problems
- Note:  one-vs-rest is an application of binary classification
- when majority of features are **continuous**, use the Gaussian distribution
- when majority of features are **0 / 1**, use the Bernoulli distribution
- when majority of features are **counts**, use the Multinomial distribution

## Advantages
- works with limited data
- works with large dataset
- fast algorithm


---

## Resources

- [Naive Bayes Classifier](http://www.statsoft.com/textbook/naive-bayes-classifier)
