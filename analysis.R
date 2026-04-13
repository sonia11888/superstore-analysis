# Load libraries
library(ggplot2)
library(dplyr)

# Load data
data <- read.csv("data/SampleSuperstore.csv")

# Summary by category
data %>%
  group_by(Category) %>%
  summarise(
    Total_Sales = sum(Sales),
    Total_Profit = sum(Profit)
  )

# Profit by category
ggplot(data, aes(x = Category, y = Profit)) +
  geom_col() +
  labs(title = "Profit by Category")

# Sales vs Profit
ggplot(data, aes(x = Sales, y = Profit)) +
  geom_point() +
  labs(title = "Sales vs Profit Relationship")