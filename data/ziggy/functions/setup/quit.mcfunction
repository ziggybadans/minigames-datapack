tellraw @s {"text": "Removing datapack...", "color": "dark_red", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing settings variables", "italic": true}
scoreboard objectives remove settings
scoreboard players reset debugging

execute if score debugging settings matches 1 run tellraw @s {"text": "Setting installed boolean to false", "italic": true}
scoreboard players set installed setup 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing bed and death trackers", "italic": true}
scoreboard objectives remove bd
scoreboard objectives remove dead
scoreboard players reset red_bed
scoreboard players reset yellow_bed
scoreboard players reset green_bed
scoreboard players reset blue_bed

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing teams", "italic": true}
team remove red
team remove yellow
team remove green
team remove blue

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing installation tracker", "italic": true}
scoreboard objectives remove setup
scoreboard players reset installed

tellraw @s {"text": "Datapack removed. We hope to see you again soon!", "color": "red", "bold": true}
tellraw @s ["",{"text":"In order to entirely remove this datapack, make sure to type","italic":true,"color":"gray"},{"text":"/datapack disable \"file/bedwars\"","italic":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable \"file/bedwars\""}}]