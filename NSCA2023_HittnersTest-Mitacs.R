#Mitacs 
#Date: Feb 17, 2023
# Doing a hittmans test
# Used for Parker Scott's study

#load in package
library(cocor)

library(readxl)
Mitacs <- read_excel("Documents/R/Mitacs.xlsx") #Columns containing force data
View(Mitacs)

# call in data (changed specific to the cors outut in SPSS)
r.jk= -.453
r.jh=-.437
r.kh=0.810
n=41


cocor.dep.groups.overlap(
  r.jk,
  r.jh,
  r.kh,
  n,
  alternative = "two.sided",
  test = "all",
  alpha = 0.05,
  conf.level = 0.95,
  null.value = 0,
  data.name = NULL,
  var.labels = NULL,
  return.htest = FALSE
)
