tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

## Settings
#define objective settings
execute store success score settings_exist setup run scoreboard objectives add settings trigger "Settings"
#define score_holder settings_exist
execute if score settings_exist setup matches 0 run function system:init/settings

## Global game tracking
#define objective game Global game tracking | 0 = not active, 1 = in lobby, 2 = playing, 3 = ending
scoreboard objectives add game dummy "Active Games"
#define score_holder HS_GAMELOOP Global Hide&Seek game loop on/off
scoreboard players set HS_GAMELOOP game 0
#define score_holder HS_LOBBYLOOP Global Hide&Seek lobby loop on/off
scoreboard players set HS_LOBBYLOOP game 0
#define score_holder hs-seacliff Hide and Seek | Seacliff Map
scoreboard players set hs-seacliff game 0
#define team hide_seek Team for lobby and game management
team add hide_seek

## Position Tracking
scoreboard objectives add pos1_X dummy
scoreboard objectives add pos1_Y dummy
scoreboard objectives add pos1_Z dummy
scoreboard objectives add pos2_X dummy
scoreboard objectives add pos2_Y dummy
scoreboard objectives add pos2_Z dummy
#define objective moving Player value is 1 if they are moving
scoreboard objectives add moving dummy

## Death Tracking
scoreboard objectives add health health "Health"
scoreboard objectives add dead deathCount "Dead"

## playerID
#define objective justleft Checks if a player has left the game
scoreboard objectives add justleft minecraft.custom:minecraft.leave_game "Recently left"
#define score_holder nextID Next available ID to assign
#define score_holder currentID Current maximum ID
#define score_holder #base Minimum number of players for a game
#define score_holder currentIDtrue Real number of players based on /team list

## Triggers
#define objective play_hideandseek Trigger objective for starting a hideandseek game | 0 = lobby, 1 = triggered, 2 = choosing map, 3 = waiting, 4 = joined, 5 = playing
scoreboard objectives add play_hideandseek trigger

## Lobby
#define objective lobby_waiting Waiting period to join lobby to stop playerID errors
scoreboard objectives add lobby_waiting dummy

## Libaries
function system:init/libraries

## Modules
function system:init/hideandseek