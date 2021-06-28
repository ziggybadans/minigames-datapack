tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

scoreboard objectives add game dummy
#define entity bedwars Bedwars game state
scoreboard players set bedwars game 0
#define entity hide_seek Hide and Seek game state
scoreboard players set hide_seek game 0

team add hide_seek
team add bedwars
scoreboard objectives add justleft minecraft.custom:minecraft.leave_game

scoreboard objectives add play_hideandseek trigger
scoreboard players reset * play_hideandseek
scoreboard objectives add play_bedwars trigger
scoreboard players reset * play_bedwars

scoreboard objectives add timers dummy
scoreboard players set position timers 0
scoreboard objectives add hs_timers dummy
#define entity game_length The length of a game
scoreboard players set game_length hs_timers 24000
scoreboard objectives add bw_timers dummy

scoreboard objectives add playerID dummy
#define entity nextID Next available ID to assign
scoreboard players set nextID playerID 1
#define entity currentID Current maximum ID
scoreboard players set currentID playerID 0
scoreboard players set #base playerID 0

#region Position Tracking
scoreboard objectives add pos1_X dummy
scoreboard objectives add pos1_Y dummy
scoreboard objectives add pos1_Z dummy
scoreboard objectives add pos2_X dummy
scoreboard objectives add pos2_Y dummy
scoreboard objectives add pos2_Z dummy

scoreboard objectives add moving dummy
#endregion

scoreboard objectives add health health "Health"
scoreboard objectives add dead deathCount "Dead"

scoreboard objectives add random dummy
#define objective range Range for random function to utilise
scoreboard objectives add range dummy

tellraw @s {"text": "Enabling bedwars module...", "color": "red", "bold": false}
function system:init/bedwars
tellraw @s {"text": "Enabling hide and seek module...", "color": "red", "bold": false}
function system:init/hideandseek

scoreboard players set installed setup 1