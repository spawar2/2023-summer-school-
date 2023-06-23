# Author: Shrikant; Date: 06/22/23; Purpose: Microarray analysis

# Set the working directory
setwd("/Users/pawar/Desktop/GSE344_RAW")

# Load the library
library(affy)

# Reading .CEL data in a variable called eset
eset <- ReadAffy()

# Generate a box plot of raw data
boxplot(eset)

# Perform RMA normalization
eset_Norm <- rma(eset)

# Box plots for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)









