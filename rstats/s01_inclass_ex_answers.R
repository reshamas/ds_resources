# -----------------------------------------------
# Class:        Foundations of Statistics Using R
# Title:        in-class exercises
# Session:      1
# Topic:        Getting Started with R
# Last updated: 3/8/2014
#------------------------------------------------

# 1.
# (123 − 45)/4 + 4 × (72/2.34 − 3)
(123-45)/4 + 4 * (72/2.34 - 3)
# [1] 130.5769

# 2.
# abs(-88)
abs(-88)
# [1] 88

# 3.
# log10(72)
log10(72)
# [1] 1.857332

# 4.
# e^1.45 − 2.612
exp(1.45) - 2.612
# [1] 1.651115


# 5.
year_born = 1981
year_current = 2014
age = year_current - year_born
age
# [1] 33
age >= 18
# [1] TRUE

# 6.
# Area = pi * r^2
Area = 100
r = sqrt(Area/pi)
r
# [1] 5.641896

# 7.
# went to lunch and bill was $45.90
# compute following to two decimal places
# a) compute subtotal:  add NYC tax of 8.875%
# b) compute 15% tip on subtotal
# c) compute 20% tip on subtotal

bill = 45.90
taxrate = 8.875
subtot = bill*(1+taxrate/100)
subtot
round(subtot,2)

# 7a
# [1] 49.97

tip15 = subtot* 1.15
round(tip15, 2)

# 7b
# [1] 57.47

tip20= subtot* 1.20
round(tip20, 2)

# 7c
# [1] 59.97
