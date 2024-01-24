#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto about Toronto
#         Public Library branches and Toronto wards
# Author: Hadi Ahmad
# Date: 24 January 2023
# Contact: hadiq.ahmad@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to get Toronto library branch and ward data
# Any other information needed? The 25 ward model was used for this script 
#                               instead of the older 44 ward model

#### Workspace setup ####
# install.packages('xlsx')     
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(xlsx)      

# TORONTO PUBLIC LIBRARY DATA
# Code copied from https://open.toronto.ca/dataset/library-branch-general-information/
# get package
package <- show_package("f5aa9b07-da35-45e6-b31f-d6790eb9bd9b")
package

# get all resources for this package
resources <- list_package_resources("f5aa9b07-da35-45e6-b31f-d6790eb9bd9b")

# identify datastore resources; by default, Toronto Open Data sets datastore 
# resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
library_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
library_data

#### Save data ####
# Output data to csv
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(library_data, "inputs/data/library_raw_data.csv") 

# WARD DATA
# Code copied from https://open.toronto.ca/dataset/ward-profiles-25-ward-model/
# get package
package <- show_package("6678e1a6-d25f-4dff-b2b7-aa8f042bc2eb")
package

write.xlsx(package, "inputs/data/wards_raw_data.xlsx")