library(tidyverse)
library(dplyr)
library(readr)
base_donnees <- read_csv("output.csv", col_types = cols(`Code région` = col_character()), 
                   locale = locale(encoding = "ISO-8859-1"))

base_donnees <- separate(base_donnees, `Engagements L. 33-13 et AMEL`,
         sep ="[\\(\\)]",
         into = c("Operateur","Dispositif","Pourcentage_couverture"))
