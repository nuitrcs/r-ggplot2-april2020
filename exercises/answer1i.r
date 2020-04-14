# Run the code below to set up the data
# Make a bar plot of the total number of babies with 
# the unisex names by sex


library(tidyverse)
unisex_data <- read_csv("data/unisex.csv")
unisex_counts <- unisex_data %>%
  select(-prop) %>%
  group_by(name, sex) %>%
  summarize(total=sum(n)) %>%
  ungroup()
unisex_counts


# Make a bar plot of the total number of babies with 
# the unisex names, colored by sex

ggplot(unisex_counts, aes(x=name, y=total, fill=sex)) + 
  geom_bar(stat="identity") + 
  labs(x="", y="Total Babies, 1950-2015",
       fill="")

# Change the plot to have male and female bars side by side

ggplot(unisex_counts, aes(x=name, y=total, fill=sex)) + 
  geom_bar(stat="identity", position="dodge") + 
  labs(x="", y="Total Babies, 1950-2015",
       fill="")

  
# Bonus: Order the bars by the total number of babies, largest to smallest.
# Hint: You need to order the factor levels before sending the data to the plot.  
# See the function fct_reorder() in the forcats package

unisex_counts %>%
  mutate(name=fct_reorder(name, total, .desc=TRUE)) %>%
  ggplot(aes(x=name, y=total, fill=sex)) + 
  geom_bar(stat="identity") + 
  labs(x="", y="Total Babies, 1950-2015",
       fill="")



