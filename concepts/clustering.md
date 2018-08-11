# Clustering

## Matrix Decomposition
- Matrix decomposition, also known as matrix factorization, involves describing a given matrix using its constituent elements.

## SVD (Singular-value Decomposition)
- Perhaps the most known and widely used matrix decomposition method is the Singular-Value Decomposition, or SVD. 
- All matrices have an SVD, which makes it more stable than other methods, such as the eigendecomposition. 
- As such, it is often used in a wide array of applications including compressing, denoising, and data reduction.

## PCA (Principal Component Analysis)
- PCA is SVD on covariance matrix

## LSA (Latent Semantic Analysis)
- is SVD applied to a word / document matrix
  * Sigma (matrix) is important of each topic
  * U (matrix) is a transform from a word vector to the topics that word is most used in

## Hierarchical Agglomerated Clustering
* DBScan
* Mean Shift

---

## Resources

- Alan's notebook:  https://github.com/alanjschoen/metisnotes/blob/master/NLP%20Tools%20and%20Methods.ipynb

- [Automated Way to Choosing Clusters, r-bloggers site](https://www.r-bloggers.com/counting-clusters/)

- [A Gentle Introduction to Singular-Value Decomposition for Machine Learning](https://machinelearningmastery.com/singular-value-decomposition-for-machine-learning/)
