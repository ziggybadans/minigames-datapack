tellraw @a {"text": "Resetting game...", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Resetting bed tracker", "italic": true}
scoreboard players set red_bed bd 0
scoreboard players set yellow_bed bd 0
scoreboard players set green_bed bd 0
scoreboard players set blue_bed bd 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Resetting death tracker", "italic": true}
scoreboard players reset * dead

execute if score debugging settings matches 1 run tellraw @s {"text": "Resetting teams", "italic": true}
team leave @a[team=!]

execute if score debugging settings matches 1 run tellraw @s {"text": "Resetting settings", "italic": true}
scoreboard players set * settings 0