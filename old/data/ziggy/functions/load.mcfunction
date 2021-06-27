scoreboard objectives add setup dummy
execute unless score installed setup matches 1 run scoreboard players set installed setup 0

# Adds objective for settings variables
execute unless score installed setup matches 1 run scoreboard objectives add settings dummy

tellraw @a {"text": "Bedwars minigame loaded.", "color": "#0000FF"}