# packages

# install packages (once)
install.packages("rio")        # for importing
install.packages("dplyr")      # for cleaning
install.packages("stargazer")  # for tabling
install.packages("ggplot2")    # for plotting

# load packages (every R session)
library(rio)
library(dplyr)
library(stargazer)
library(ggplot2)
# -------------------------------------------------------------------------

data <- import("CPDS-1960-2017-Update-2019.xlsx")

# filter

# filter
filtered.data <- data %>%             
  filter(year == "2017")   # limit it to observations from 2017

# visualise 
       
ggplot(data=filtered.data, aes(gov_type)) + 
geom_histogram(binwidth = 0.5,
               col="black",
               fill="grey",
               ) +
  labs(title="Histogram of Government Types in 2017",
       x="Government Types",
       y="Number of Countries")