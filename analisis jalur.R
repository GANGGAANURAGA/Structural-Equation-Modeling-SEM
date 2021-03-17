# install.packages("sem")
# install.packages("semPlot")
library("sem")
library(devtools)
library(semPlot)
# matrik korelasi, didapatkan dari korelasi antar variabel terukur
R.sci <- readMoments(diag=FALSE, names=c("read","write","math","science"),
                     text="
                     0.5967765 
                     0.6622801 0.6174493 
                     0.6301579 0.5704416 0.6307332 
                     ")
R.sci
# Tentukan Spesifikasi Model
mod.sci <- specifyModel(text="
                        read -> math,gam31
                        write -> math,gam32
                        read -> science,gam41
                        write -> science, gam42
                        math -> science, beta43
                        math <-> math, phi33
                        science <-> science, phi44    
                        ")    
mod.sci
# help(specifyModel)
sem.out <- sem(mod.sci, R.sci, N=200,fixed.x=c("read","write"), standardized=TRUE)
effects(sem.out)
summary(sem.out)
# install.packages("devtools", dependencies = TRUE)
# Diagram Jalur / Path Diagram
semPaths(sem.out,whatLabels="est.std",style="lisrel",residuals=TRUE)

