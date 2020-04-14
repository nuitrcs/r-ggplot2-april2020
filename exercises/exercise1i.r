# Run the code below to set up the data

library(tidyverse)
unisex_data <- read_csv("data/unisex.csv")
unisex_counts <- unisex_data %>%
  select(-prop) %>%
  group_by(name, sex) %>%
  summarize(total=sum(n)) %>%
  ungroup()
unisex_counts

# Make a bar plot of the total number of babies with 
# the unisex names by sex




# Change the plot to have male and female bars side by side



# Bonus: Order the bars by the total number of babies, largest to smallest.
# Hint: You need to order the factor levels before sending the data to the plot.  
# See the function fct_reorder() in the forcats package


