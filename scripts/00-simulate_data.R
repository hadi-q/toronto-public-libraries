#### Preamble ####
# Purpose: Simulates the ward corresponding to each branch of the Toronto Public Library
# Author: Hadi Ahmad
# Date: 22 January 2024
# Contact: hadiq.ahmad@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? The 25 ward model was used for this script 
#                               instead of the newer 44 ward model

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
simulated_data <-
  tibble(
    # Use 1 through to 112 to represent each library branch
    "Branch" = 1:112,
    # Randomly pick an option, with replacement, 112 times
    "Ward" = sample(
      x = c("Beaches-East York", "Davenport", "Don Valley East", "Don Valley North", "Don Valley West", "Eglinton-Lawrence", "Etobicoke Centre", "Etobicoke North", "Etobicoke-Lakeshore", "Humber River-Black Creek", "Parkdale-High Park", "Scarborough Centre", "Scarborough North", "Scarborough Southwest", "Scarborough-Agincourt", "Scarborough-Guildwood", "Scarborough-Rouge Park", "Spadina-Fort York", "Toronto Centre", "Toronto-Danforth", "Toronto-St. Paul's", "University-Rosedale", "Willowdale", "York Centre", "York South-Weston"),
      size = 112,
      replace = TRUE
    )
  )

simulated_data

