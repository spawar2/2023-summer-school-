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

# Analysis: Comparison with fold change analysis
# Assigning first 2 samples as Treatment and next 2 as control

Treatment <- apply(rma[, c("GSM4843.CEL", "GSM4844.CEL")], 1, log)

Control <- apply(rma[, c("GSM4845.CEL", "GSM4846.CEL")], 1, log)

# Change the dimensions of your dataframe by assigning rows as columns and columns as rows/Transpose

Treatment_T <- t(Treatment)
Control_T <- t(Control)

# Take mean on rows/gene IDS
Treatment_T_Mean <- rowMeans(Treatment_T)
Control_T_Mean <- rowMeans(Control_T)

# Take fold change/subtraction
Fold_change <- Treatment_T_Mean-Control_T_Mean

>+2= Up-regulated
<-2=Down-regulated
Up-regulated gene +
Down-regulated gene -

# MA Plots

if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

M = log2(x/y) and A = (log2(x) + log2(y))/2, where x and y are respectively the mean of the two groups being compared.

M = Treatment_T_Mean/Control_T_Mean
A = (Treatment_T_Mean+Control_T_Mean)/2

ma.plot( M, A, cex=1 )



























