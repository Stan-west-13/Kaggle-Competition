library(dplyr)
library(purrr)
library(RSQLite)
library(DBI)
library(readr)
source("schema_helper.R")

files <- list.files("data",pattern = "tracking", full.names = T)

df <- map_dfr(files, read_csv)

write_rds(df, file = "data/tracking_combined.rds")


con <- dbConnect(RSQLite::SQLite(), 'data/databases/nfl_comp.db')
dbExecute(con, "PRAGMA foreign_keys = ON;")
schema <- read_sql_schema("databases/nfl_comp_schema.sql")
