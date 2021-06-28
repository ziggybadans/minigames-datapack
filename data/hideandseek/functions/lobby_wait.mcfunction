scoreboard players set @s play_hideandseek 2
# A buffer for the lobby joining system
scoreboard players add @s lobby_cooldown 1
execute if score @s lobby_cooldown matches 15 run function hideandseek:lobby_join