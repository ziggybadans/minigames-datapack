execute if score @s play_hideandseek matches 2 run tellraw @s {"text": "Joining...","italic": true}
# Resets lobby cooldown in case an existing lobby cooldown was already there
execute if score @s play_hideandseek matches 2 run scoreboard players reset @s lobby_waiting
scoreboard players set @s play_hideandseek 3

# Lobby cooldown timer
scoreboard players add @s lobby_waiting 1
execute if score @s lobby_waiting matches 15 run function hideandseek:lobby/lobby_join