# Sets player state to 3 = playing
scoreboard players set @s play_hideandseek 3
# Adds permanent tag
tag @s add hideandseek
# Adds temporary team for lobby management
team join hide_seek @s

teleport @s 0 52 0 0 0
gamemode adventure @s

# Block picking
execute as @s run function hideandseek:lobby/block
# Automatic playerID sorting
execute as @s run function system:tools/sort_players