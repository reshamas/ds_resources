# -----------------------------------------------
# Class:        
# Title:        
# Session:      
# Topic:        R - Graphs
# Last updated: 4/17/2014
# Data:         movies2014.csv
# Data describe: 50 top grossing movies for 2014
#------------------------------------------------

# get current working directory
getwd()

# set working directory
setwd("/Users/reshamashaikh/_0nyu/_FSR/s05_graphs/s05_inclassEx")

# Source: Top Grossing Movies for 2014 - dataset contains top 50
# http://www.the-numbers.com/market/2014/top-grossing-movies

# import data
movies <- read.csv("movies2014.csv", sep=",", header=TRUE)

# open and look at data
View(movies)

# how many variables are in the data frame? (number of columns)
print(length(movies))

# what are the names of the columns?
names(movies)
str(movies)

# how many rows, columns are in the data frame?
dim(movies)
#print(dim(movies))


# let's do scatter plot of Tickets Sold and Gross 
plot(movies$X2014.Gross, movies$Tickets.Sold)

# let's try again, adjusting scales, divide by 1000
# try dividing Gross sales by 1000
plot(movies$Tickets.Sold/1000,  movies$X2014.Gross/1000 )

plot(movies$Tickets.Sold/100000,  movies$X2014.Gross/100000)

# Scale by a million
movies$Tickets.Sold.millions <- movies$Tickets.Sold/1000000
movies$X2014.Gross.millions <- movies$X2014.Gross/1000000

# let us try creating the scatter plot again
plot(movies$Tickets.Sold.millions,  movies$X2014.Gross.millions)


# let's see what the correlation is
cor(movies$Tickets.Sold.millions,  movies$X2014.Gross.millions)

# Note:  There seems to be a positive correlation between tickets sold and gross,
# which is to be expected.

# let's add a line to the scatter plot
plot(movies$Tickets.Sold.millions,  movies$X2014.Gross.millions, type="b")

# let's label the simple scatter plot
plot(movies$Tickets.Sold.millions, movies$X2014.Gross.millions, 
     type="b", 
     xlab="Tickets Sold (millions)", 
     ylab="Gross Sales (millions)",
     main="Top 50 Grossing Films of 2014")

# let's see a boxplot of Gross Sales
boxplot(movies$X2014.Gross.millions, main="Top 50 Grossing Films of 2014", frame.plot=FALSE)

# let's see a boxplot of Gross Sales - try horizontal
boxplot(movies$X2014.Gross.millions, 
        horizontal = TRUE,
        main="Top 50 Grossing Films of 2014, Sales (millions)", 
        frame.plot=FALSE)

# let's look at histograms of the types of films
hist(movies$Genre)

hist(as.numeric(movies$Genre))
# gives error since Genre is a factor variable

# let's do histogram of numeric variable, Gross Sales
hist(movies$X2014.Gross.millions)
# Note:  gives 5 bins

# let's try specifying with 10 bins
hist(movies$X2014.Gross.millions, breaks=10)

# let's do histogram for ticket sales
hist(movies$Tickets.Sold)

hist(movies$Tickets.Sold, breaks=15)

# if we use the millions value, it looks cleaner
hist(movies$Tickets.Sold.millions, breaks=15)

# print freq counts at top
hist(movies$Tickets.Sold.millions, 
     breaks=15, 
     labels=TRUE,
     xlab="Tickets Sold (millions)",
     main="Top 50 Grossing Films of 2014, Sales (millions)"
     )

str(movies)

barplot(prop.table(table(movies$Genre)))

#barplot(prop.table(table(movies$Distributor)))  

# ------------------------------
# END
# ------------------------------

