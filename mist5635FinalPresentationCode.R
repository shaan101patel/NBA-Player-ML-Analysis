library(readr)
library(dplyr)
library(tidyr)
install.packages("forecast")
library(forecast)
library(caret)
library(randomForest)



df <- read_csv("modern_RAPTOR_by_player.csv")


#Filter dataframe to only include 2020+ seasons
df <- df %>% filter(season >= 2020)

# Regular Season DataFrame
regular_season <- df %>%
  mutate(war_total = NULL, war_playoffs = NULL) # Exclude total and playoff WAR

# Playoff DataFrame
playoffs <- df %>%
  filter(war_playoffs != 0) %>%                 # Keep only rows with playoff data
  select(player_name, season, war_playoffs, everything()) # Retain playoff WAR and identifiers

#Testing to see if data cleaning/mutation worked
dim(regular_season)
dim(playoffs)

head(regular_season)
head(playoffs)

##SECTION 1: Statistics Analysis of Key Metrics ----------------------------------------------


# Descriptive statistics for Regular Season
regular_season_stats <- regular_season %>%
  summarise(
    mean_war = mean(war_reg_season, na.rm = TRUE),    # Mean of WAR for regular season
    sd_war = sd(war_reg_season, na.rm = TRUE),        # Standard deviation
    mean_raptor = mean(raptor_total, na.rm = TRUE),   # Mean of RAPTOR total
    sd_raptor = sd(raptor_total, na.rm = TRUE)        # Standard deviation
  )

print(regular_season_stats)   #mean_war = 1.37, sd_war = 2.41, mean_raptor = -1.72, sd_raptor = 6.40



# Descriptive statistics for Playoffs
playoff_stats <- playoffs %>%
  summarise(
    mean_war = mean(war_playoffs, na.rm = TRUE),      # Mean of WAR for playoffs
    sd_war = sd(war_playoffs, na.rm = TRUE),          # Standard deviation
    mean_raptor = mean(raptor_total, na.rm = TRUE),   # Mean of RAPTOR total
    sd_raptor = sd(raptor_total, na.rm = TRUE)        # Standard deviation
  )

print(playoff_stats)          #mean_war = 0.437, sd_war = 0.0.875, mean_raptor = -0.0842, sd_raptor = 3.58



#Regular season player ranking
player_ranking <- regular_season %>%
  group_by(player_name) %>%
  summarise(
    mean_war = mean(war_reg_season, na.rm = TRUE),    # Mean WAR per player
    mean_raptor = mean(raptor_total, na.rm = TRUE)   # Mean RAPTOR per player
  ) %>%
  arrange(desc(mean_war))                             # Sort by mean WAR

print(player_ranking)



#Ranking players by mean WAR and RAPTOR (Playoffs)
playoff_ranking <- playoffs %>%
  group_by(player_name) %>%
  summarise(
    mean_war_playoffs = mean(war_playoffs, na.rm = TRUE),  # Mean WAR per player (Playoffs)
    mean_raptor_playoffs = mean(raptor_total, na.rm = TRUE) # Mean RAPTOR per player (Playoffs)
  ) %>%
  arrange(desc(mean_war_playoffs))  # Sort by mean WAR in Playoffs

print(playoff_ranking)


##SECTION 2: Machine Learning Based Ranking Model --------------------------------------------



















##SECTION 3: Time-Series Analysis for Trend Direction ---------------------------------------











