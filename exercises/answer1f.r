# Run the code below to set up the data

library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data


# Change the color scale for the lines with scale_color_viridis_d()
# Change the y-axis to have labels every 1000 babies and go from 0 to 11000

ggplot(unisex_data, aes(x=year, y=Male+Female, color=name)) + 
  geom_line(size=2) +
  scale_color_viridis_d() +
  scale_y_continuous(breaks=seq(0, 11000, 1000), limits=c(0, 11000)) +
  theme_minimal() 


# What's the difference between scale_color_viridis_d() and 
# scale_color_viridis_c()? >> check the help



# Bonus: 
# Can you define your own colors?
# A vector with 9 colors is provided for you, but you can change it!
# (You need 9 for the 9 names in the data)
# Look at the help for scale_color_manual - especially the examples

cols <- c("red", "orange", "yellow", "lightgreen", "green",
          "lightblue", "blue", "purple", "pink")
# if you want to associate a specific color with a specific name;
# otherwise it will just use them in order
names(cols) <- unique(unisex_data$name)  
cols

ggplot(unisex_data, aes(x=year, y=Male+Female, color=name)) + 
  geom_line(size=2) +
  scale_color_manual(values=cols) +
  theme_minimal() 

