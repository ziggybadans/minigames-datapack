tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding installation tracker", "italic": true}
scoreboard objectives add setup dummy
scoreboard players set installed setup 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding game state tracker", "italic": true}
scoreboard objectives add game dummy
scoreboard players set bedwars game 0
scoreboard players set hide_seek game 0

scoreboard players set hs_timer game 24000

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding global timer", "italic": true}
scoreboard objectives add timer dummy

scoreboard objectives add playerID dummy
scoreboard players set nextID playerID 1
scoreboard players set currentID playerID 0
scoreboard players set #base playerID 0
scoreboard players set #minimum playerID 2

scoreboard objectives add health health "Health"
scoreboard objectives add dead deathCount "Dead"

tellraw @s {"text": "Enabling bedwars module...", "color": "red", "bold": false}
function ziggy:init/bedwars_init

tellraw @s {"text": "Enabling hide and seek module...", "color": "red", "bold": false}
function ziggy:init/hideandseek_init

scoreboard objectives add pos1_X dummy
scoreboard objectives add pos1_Y dummy
scoreboard objectives add pos1_Z dummy
scoreboard objectives add pos2_X dummy
scoreboard objectives add pos2_Y dummy
scoreboard objectives add pos2_Z dummy

scoreboard objectives add true_moving dummy

execute if score debugging settings matches 1 run tellraw @s {"text": "Setting 'installed' to true", "italic": true}
scoreboard players set installed setup 1

tellraw @s {"text": "Done!", "color": "green"}