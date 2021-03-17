library("sem")
library("ggplot2")
library("GGally")
library(devtools)
library(semPlot)
library("MVN")
# install.packages("GGally", dependencies = TRUE)
#install.packages("MVN")
data <- read.csv("data_analisis_jalur.csv")
head(data)
dim(data)
ggcorr(data[, 8:12], low = "steelblue", mid = "white", high = "darkred")
options(digits = 3)
cor(data[, 8:12],method = "pearson")
datakorelasi <- readMoments(diag = FALSE, names=c("A","B","C","D","E"),text = "
                        0.552 
                        0.450 0.503 
                        0.708 0.523 0.604 
                        0.558 0.437 0.626 0.508")
datakorelasi
modelpath <- specifyModel(text = "
                      D->A,gam11 
                      D->B,gam21 
                      D->C,gam31 
                      D->E,gam41 
                      B->A,beta12 
                      C->B,beta23 
                      E->A,beta14 
                      E->C,beta34 
                      A<->A,phi11 
                      B<->B,phi22 
                      C<->C,phi33 
                      E<->E,phi44")
path.out <- sem(modelpath, datakorelasi, N=49,fixed.x = c("D"))
effects(path.out)
summary(path.out)
semPaths(path.out,whatLabels="est.std",style="lisrel",residuals=TRUE)
Data = data[, 8:12]
Data = data.frame(Data)
head(Data)
#normal multivariate
normalmulti <- mvn(Data, mvnTest = "mardia", 
                   cov = TRUE, multivariatePlot = "qq", 
                   multivariateOutlierMethod = "quan",
                   showOutliers = TRUE, showNewData = TRUE)
normalmulti
# data tanpa outlier
Data.1 <- normalmulti$newData
head(Data.1)
