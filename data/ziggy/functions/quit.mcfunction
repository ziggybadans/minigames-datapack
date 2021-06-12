tellraw @s {"text": "Removing datapack...", "color": "dark_red", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Setting installed boolean to false", "italic": true}
scoreboard players set installed setup 0

tellraw @s {"text": "Uninstalling bedwars module...", "color": "red", "bold": false}
function ziggy:quit/bedwars_quit

tellraw @s {"text": "Uninstalling hide and seek module...", "color": "red", "bold": false}
function ziggy:quit/hideandseek_quit

scoreboard players reset * timer
scoreboard objectives remove timer

scoreboard players reset * playerID
scoreboard objectives remove playerID

scoreboard players reset * health
scoreboard objectives remove health

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing installation tracker", "italic": true}
scoreboard players reset * setup
scoreboard objectives remove setup

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing settings variables", "italic": true}
scoreboard players reset * settings
scoreboard objectives remove settings

tellraw @s {"text": "Datapack removed. We hope to see you again soon!", "color": "red", "bold": true}
tellraw @s ["",{"text":"In order to entirely remove this datapack, make sure to type","italic":true,"color":"gray"},{"text":"/datapack disable \"file/bedwars\"","italic":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable \"file/bedwars\""}}]