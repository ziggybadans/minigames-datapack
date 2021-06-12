tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding installation tracker", "italic": true}
scoreboard objectives add setup dummy
scoreboard players set installed setup 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding game state tracker", "italic": true}
scoreboard objectives add game dummy
scoreboard players set bedwars game 0
scoreboard players set hide_seek game 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding global timer", "italic": true}
scoreboard objectives add timer dummy

scoreboard objectives add playerID dummy
scoreboard players set nextID playerID 1

scoreboard objectives add health health "Health"

tellraw @s {"text": "Enabling bedwars module...", "color": "red", "bold": false}
function ziggy:init/bedwars_init

tellraw @s {"text": "Enabling hide and seek module...", "color": "red", "bold": false}
function ziggy:init/hideandseek_init

execute if score debugging settings matches 1 run tellraw @s {"text": "Setting 'installed' to true", "italic": true}
scoreboard players set installed setup 1

tellraw @s {"text": "Done!", "color": "green"}