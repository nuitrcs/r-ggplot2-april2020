# Run the code below to set up the data
# Change the plot to use a facet_wrap by name


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data


# Change the plot to use a facet_wrap by name

ggplot(unisex_data, aes(x=Male, y=Female)) + 
  geom_point() +
  theme_minimal() +
  facet_wrap(~name)


# Bonus: Reverse the order of the names in the facets

unisex_data$name <- factor(unisex_data$name, 
                           levels=rev(unique(unisex_data$name)))
ggplot(unisex_data, aes(x=Male, y=Female)) + 
  geom_point() +
  theme_minimal() +
  facet_wrap(~name)

# or

library(forcats)
unisex_data$name <- fct_rev(unisex_data$name)
ggplot(unisex_data, aes(x=Male, y=Female)) + 
  geom_point() +
  theme_minimal() +
  facet_wrap(~name)
