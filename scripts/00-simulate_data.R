#### Preamble ####
# Purpose: Simulates the neighbourhood corresponding to each branch of the Toronto Public Library
# Author: Hadi Ahmad
# Date: 24 January 2024
# Contact: hadiq.ahmad@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to get Toronto open data

#### Workspace setup ####
# install.packages("tidyverse")
library(tidyverse)

#### Simulate data ####
simulated_data <-
  tibble(
    # Use 1 through to 112 to represent each library branch
    "Branch" = 1:112,
    # Randomly pick an option, with replacement, 112 times
    "Ward" = sample(
      x = c("Beaches-East York", "Davenport", "Don Valley East", 
            "Don Valley North", "Don Valley West", "Eglinton-Lawrence", 
            "Etobicoke Centre", "Etobicoke North", "Etobicoke-Lakeshore", 
            "Humber River-Black Creek", "Parkdale-High Park", 
            "Scarborough Centre", "Scarborough North", "Scarborough Southwest", 
            "Scarborough-Agincourt", "Scarborough-Guildwood", 
            "Scarborough-Rouge Park", "Spadina-Fort York", "Toronto Centre", 
            "Toronto-Danforth", "Toronto-St. Paul's", "University-Rosedale", 
            "Willowdale", "York Centre", "York South-Weston"),
      size = 112,
      replace = TRUE
    )
  )

simulated_data

# Ensure correct column name selected from simulated data
names(simulated_data)

# Test cases

# Ensure that each ward is randomly assigned >1 library branch
simulated_data$Ward |>
  unique() == c("Beaches-East York", "Davenport", "Don Valley East", 
                "Don Valley North", "Don Valley West", "Eglinton-Lawrence", 
                "Etobicoke Centre", "Etobicoke North", "Etobicoke-Lakeshore", 
                "Humber River-Black Creek", "Parkdale-High Park", 
                "Scarborough Centre", "Scarborough North", "Scarborough Southwest", 
                "Scarborough-Agincourt", "Scarborough-Guildwood", 
                "Scarborough-Rouge Park", "Spadina-Fort York", "Toronto Centre", 
                "Toronto-Danforth", "Toronto-St. Paul's", "University-Rosedale", 
                "Willowdale", "York Centre", "York South-Weston")
# Ensure that 25 wards are represented
simulated_data$Ward |>
  unique() |>
  length() == 25