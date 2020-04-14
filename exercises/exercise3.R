# Exercise 3

# setup code
library(tidyverse)

# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
kerry <- filter(unisex_data, name=="Kerry")

# label the two peak years in this plot
# Male: 1960, Female: 1971
# use annotate() - you can call it twice, or specify vectors for x and label params
# Hint: the y limits of the plot will adjust automatically to fit your annotations
ggplot(kerry, aes(year, n, color=sex)) + 
  geom_line() + 
  labs(title="Kerry", y="Number of Babies", x="") +
  annotate("text", x=___, y=___, label=___, ____)


# BONUS: draw a line from the label to the peaks: 
# do this with another annotate element to the plot: type "segment"
# You might want to shift your lables to accomodate the lines

ggplot(kerry, aes(year, n, color=sex)) + 
  geom_line() + 
  labs(title="Kerry", y="Number of Babies", x="") + 
  annotate("text", ___) + 
  annotate("segment", x=___, xend=___,
           y=___, yend=___, ____)

# Bonus 2: change the label colors to match the lines: #f8766d and #00bfc4
# and further style the graph (I kept the line segments gray to avoid confusion 
# with the actual lines)



