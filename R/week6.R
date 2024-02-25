# Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
install.packages("stringr")
library(stringi)
library(stringr)


# Data Import
citations <- stri_read_lines("data/citations.txt", encoding = "Windows-1252") # a  subset of "UTF-8" 
?stri_read_lines

