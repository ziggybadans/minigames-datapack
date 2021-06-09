execute if score debugging settings matches 1 run tellraw @s {"text": "Removing role trackers", "italic": true}
scoreboard players reset * hs_block
scoreboard objectives remove hs_block

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing teams", "italic": true}
team remove hiders
team remove seekers