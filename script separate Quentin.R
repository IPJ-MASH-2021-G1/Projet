library(tidyverse)
library(dplyr)
library(readr)
base_donnees <- read_csv("output.csv", col_types = cols(`Code région` = col_character()), 
                   locale = locale(encoding = "ISO-8859-1"))

base_donnees <- separate(base_donnees, `Engagements L. 33-13 et AMEL`,
         sep ="[\\(\\)]",
         into = c("Operateur","Dispositif","Pourcentage_couverture"))

#pour nettoyer en plus commune rurale, commune montagne et zone urbaine
base_donnees$`Zones très denses`[is.na(base_donnees$`Zones très denses`)] = 0
base_donnees$`Commune rurale`[is.na(base_donnees$`Commune rurale`)] = 0
base_donnees$`Commune de montagne`[is.na(base_donnees$`Commune de montagne`)] = 0
