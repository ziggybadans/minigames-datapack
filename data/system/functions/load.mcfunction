# Adds setup objective and checks if datapack is already installed
scoreboard objectives add setup dummy
execute unless score installed setup matches 1 run scoreboard players set installed setup 0

# Adds objective for settings variables
execute unless score installed setup matches 1 run scoreboard objectives add settings dummy

tellraw @a {"text": "Bedwars minigame loaded.", "color": "#0000FF"}
execute if score installed setup matches 0 run tellraw @a {"text":"To install this datapack, type /function ziggy:install","italic":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/function ziggy:install"},"hoverEvent":{"action":"show_text","contents":["Run command..."]}}