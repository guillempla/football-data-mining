# Load the RSQLite Library
if (!require("RSQLite")) install.packages("RSQLite", repos="http://cran.us.r-project.org"); library("RSQLite")

# Create connection to the SQLite DB file
mydb <- dbConnect(RSQLite::SQLite(), "data/database.sqlite")

# Retrieve dataframes
df_country           <- dbGetQuery(mydb, "SELECT * FROM Country")
df_league            <- dbGetQuery(mydb, "SELECT * FROM League")
df_match             <- dbGetQuery(mydb, "SELECT * FROM Match")
df_player            <- dbGetQuery(mydb, "SELECT * FROM Player")
df_player_attributes <- dbGetQuery(mydb, "SELECT * FROM Player_Attributes")
df_team              <- dbGetQuery(mydb, "SELECT * FROM Team")
df_team_attributes   <- dbGetQuery(mydb, "SELECT * FROM Team_Attributes")

# Close connection with DB
dbDisconnect(mydb)
