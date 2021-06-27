tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

scoreboard objectives add game dummy
scoreboard players set bedwars game 0
scoreboard players set hide_seek game 0

scoreboard objectives add timers dummy
scoreboard objectives add hs_timers dummy
scoreboard objectives add bw_timers dummy

scoreboard objectives add playerID dummy
scoreboard players set nextID playerID 1
scoreboard players set currentID playerID 0
scoreboard players set #base playerID 0

#region Position Tracking
scoreboard objectives add pos1_X dummy
scoreboard objectives add pos1_Y dummy
scoreboard objectives add pos1_Z dummy
scoreboard objectives add pos2_X dummy
scoreboard objectives add pos2_Y dummy
scoreboard objectives add pos2_Z dummy

scoreboard objectives add true_moving dummy
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