# set libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(readr)
library(grid)

# set working directory
setwd("C:/Users/FRED/Desktop/hackbio/STAGE 3 HACKBIO")

# Load Data
cholera_data <- read.csv("xmart.csv", stringsAsFactors = FALSE, header = TRUE)

# Check the structure of the loaded data
str(cholera_data)

# View the first few rows of the data
head(cholera_data)

# Check the names of the columns
colnames(cholera_data)


# Rename columns 
colnames(cholera_data) <- c("Country", "Year", "ReportedCases")


# Check the names again to verify
colnames(cholera_data)


# Clean the data
cholera_data$Year <- as.numeric(gsub(" ", "", cholera_data$Year))
cholera_data$ReportedCases <- as.numeric(gsub(" ", "", cholera_data$ReportedCases))

# Check the structure again to confirm changes
str(cholera_data)


# Aggregate global cases over the years
global_cases <- cholera_data %>%
  group_by(Year) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) 

# Create a line graph
line_graph <- ggplot(global_cases, aes(x = Year, y = TotalCases)) +
  geom_line(color = "blue", size = 1) +
  geom_point() +
  labs(title = "Global Cholera Cases Over Time", 
       x = "Year", 
       y = "Total Cases") +
  theme_minimal()

print(line_graph)


# Filter for countries with more than 50,000 cases
high_case_countries <- cholera_data %>%
  filter(ReportedCases > 50000) %>%
  group_by(Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE))

# Create a bar chart
bar_chart_high_cases <- ggplot(high_case_countries, aes(x = reorder(Country, -TotalCases), y = TotalCases)) +
  geom_bar(stat = "identity", fill = "orange") +
  coord_flip() +
  labs(title = "Countries with Cholera Cases > 50,000", 
       x = "Countries", 
       y = "Total Cases") +
  theme_minimal()

print(bar_chart_high_cases)


# Get top 10 countries by total reported cases
top_10_countries <- cholera_data %>%
  group_by(Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) %>%
  arrange(desc(TotalCases)) %>%
  top_n(10, TotalCases)

# Create a bar chart
bar_chart_top_10 <- ggplot(top_10_countries, aes(x = reorder(Country, -TotalCases), y = TotalCases)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  coord_flip() +
  labs(title = "Top 10 Countries with Most Cholera Cases", 
       x = "Countries", 
       y = "Total Cases") +
  theme_minimal()

print(bar_chart_top_10)


# Filter for countries with more than 50,000 cases and prepare heatmap data
heatmap_data <- cholera_data %>%
  group_by(Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) %>%
  filter(TotalCases > 50000) %>%
  ungroup()

# Create a heatmap data frame
heatmap_data_full <- cholera_data %>%
  filter(Country %in% heatmap_data$Country) %>%
  group_by(Year, Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) %>%
  ungroup()

# Create a heatmap
heatmap <- ggplot(heatmap_data_full, aes(x = Year, y = Country, fill = TotalCases)) +
  geom_tile() +
  scale_fill_viridis_c() +
  labs(title = "Heatmap of Cholera Cases in Countries with > 50,000 Cases", 
       x = "Year", 
       y = "Country") +
  theme_minimal()

print(heatmap)


# CREATING STACKED AREA CHART
# Get the top 10 countries by total reported cases
top_10_countries <- cholera_data %>%
  group_by(Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) %>%
  arrange(desc(TotalCases)) %>%
  top_n(10, TotalCases) %>%
  pull(Country)


# Prepare data for stacked area chart
stacked_area_data <- cholera_data %>%
  filter(Country %in% top_10_countries) %>%
  group_by(Year, Country) %>%
  summarise(TotalCases = sum(ReportedCases, na.rm = TRUE)) %>%
  ungroup()

# Create a stacked area chart
stacked_area <- ggplot(stacked_area_data, aes(x = Year, y = TotalCases, fill = Country)) +
  geom_area(position = 'stack') +
  labs(title = "Stacked Area Chart of Cholera Cases for Top 10 Countries", 
       x = "Year", 
       y = "Total Cases") +
  theme_minimal() +
  theme(legend.position = "bottom")

print(stacked_area)
