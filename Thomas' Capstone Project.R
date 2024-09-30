library(tidyverse)
library(knitr)
cuckoo_data <- read.csv("https://raw.githubusercontent.com/xrander/bootcamp-test/master/data/cuckoo.csv") 
str(cuckoo_data)

cuckoo_data |>
  group_by(species) |> 
  summarize( 
    frequency = n(), 
    Mean_bth = mean(breadth), 
    Median_bth = median(breadth), 
    Mean_lth = mean(length), 
    Median_lth = median(length) 
  ) |> 
  kable()