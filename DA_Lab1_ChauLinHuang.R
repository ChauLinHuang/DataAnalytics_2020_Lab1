# Data Analytics Lab 1
# Date: Oct 2, 2020
# Charly Huang

# Set up the virtual environment
renv::init()

renv::restore()

#install the packages if necessary
if(!require("tidyverse")) install.packages("tidyverse")
if(!require("fs")) install.packages("fs")
if(!require("readxl")) install.packages("readxl")
if(!require("plyr")) install.packages("plyr")
print("Done installing the packages")

# Commit the versions of all related libraries
renv::snapshot()

csv_dir <- "./GPW3_GRUMP_SummaryInformation_2010.csv"
df <- read.csv(csv_dir)
print("The CSV file is imported.")

library(readxl)
library(plyr)

excel_dir <- "./2010EPI_data.xls"
EPI2010_onlyEPICountries_sh <- read_excel(path=excel_dir, sheet=4)
EPI2010_allCountries_sh <- read_excel(path=excel_dir, sheet=5)
print("The Excel file is imported")

# print("Show EPI 2010 only EPI countries")
# EPI2010_onlyEPICountries_sh

# print("Show EPI of all countries")
# EPI2010_allCountries_sh


