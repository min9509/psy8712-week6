# Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(stringi)
library(stringr)



# Data Import
citations <- stri_read_lines("data/citations.txt", encoding = "Windows-1252") # a  subset of "UTF-8" 
citations_txt <- citations[!stri_isempty(citations)]
length(citations) - length(citations_txt) # The number of blank lines eliminated
mean(str_length(citations_txt)) # The average number of characters in each citation

# Data Cleaning
sample(citations_txt, 20)

citations_tbl <- tibble(line = 1:length(citations_txt), cite = citations_txt) %>%
  mutate(cite = str_replace_all(cite, pattern = "[\"']", replacement = ""))
citations_tbl
