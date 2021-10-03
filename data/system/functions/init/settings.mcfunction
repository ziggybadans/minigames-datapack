## Global
#define score_holder auto_lobby In-built lobby management
scoreboard players set auto_lobby settings 1

#define score_holder game_countdown How long the players should stay in the lobby for when a game is starting
scoreboard players set game_countdown settings 400

#define score_holder #base Minimum player count for games to start
scoreboard players set #base settings 0

## Hide and Seek
#define objective range Range for random function to utilise
scoreboard objectives add range trigger
#define score_holder hs_b-seacliff Hide&Seek number of possible blocks | Seacliff
scoreboard players set hs_b-seacliff range 4

scoreboard players set game_length hs_t-seacliff 24000