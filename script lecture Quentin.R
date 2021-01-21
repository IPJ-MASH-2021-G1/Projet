
library(tidyverse)
library(readr)
donnees_communes <- read_delim("communes2.csv", 
                        ";", escape_double = FALSE, col_types = cols(`Code région` = col_character(), 
                                                                     `Siren EPCI` = col_character(), Logements = col_double(), 
                                                                     `Établissements` = col_double(), 
                                                                     `Meilleure estimation des locaux à date` = col_double()
                                                                     `Commune rurale` = col_logical(),
                                                                     `Commune de montagne` = col_logical(),
                                                                     `Zone très dense` = col_logical()) 
                        trim_ws = TRUE)
summary(donnees_communes)