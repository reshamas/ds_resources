# 311 DATA EXERCISE Part 2
# Goal: Use R packages to create a subset of data and analyze it. 
# Directions: Run through the code line by line. Replace FILLER TEXT as needed.
# Use ? if you get lost, ask a neighbor, or raise your hand

# LOAD PACKAGES
require(dplyr)
require(lubridate)
require(ggplot2)

# LOAD DATASET
df_311_complaints <- read.csv("https://s3.amazonaws.com/datapolitan-training-files/311_Requests_Oct15_Nov20.csv", header=TRUE, sep=",")

dim(df_311_complaints)
n_distinct(df_311_complaints$Complaint.Type)

# CREATE SUBSET
noise_complaints <- df_311_complaints[grep("^Noise", df_311_complaints$Complaint.Type), ]

dim(noise_complaints)
n_distinct(noise_complaints$Complaint.Type)

# tabulate types of noise complaints

noise_counts0 <- table(noise_complaints$Complaint.Type)

# but, this tabulates ALL 215 complaints, not the subset of 8 noise complaints that we want
noise_counts0

#---------------------------------
# Method 1:  use "droplevels"
#---------------------------------
noise_complaints$Complaint.Type <-droplevels(noise_complaints$Complaint.Type)
noise_counts1 <- table(noise_complaints$Complaint.Type)
noise_counts1

#---------------------------------------------------
# Method 2:  read.csv(stringsAsFactors = FALSE)
#---------------------------------------------------
# LOAD DATASET
df_311_complaints2 <- read.csv("https://s3.amazonaws.com/datapolitan-training-files/311_Requests_Oct15_Nov20.csv", 
                   header=TRUE, 
                   sep=",",
                   stringsAsFactors = FALSE)

dim(df_311_complaints2)
n_distinct(df_311_complaints2$Complaint.Type)

# CREATE SUBSET
noise_complaints2 <- df_311_complaints2[grep("^Noise", df_311_complaints2$Complaint.Type), ]
noise_counts2 <- table(noise_complaints2$Complaint.Type)
noise_counts2
