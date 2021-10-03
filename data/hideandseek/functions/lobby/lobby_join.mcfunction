gamemode adventure @s

scoreboard players set @s play_hideandseek 4
# Add tag for map management
execute as @a[scores={hs-seacliff=1}] run tag @s add hs-seacliff
# Add team for lobby management
team join hide_seek

# Teleport to map
execute as @a[tag=hs-seacliff] in hs-seacliff run teleport 1 1 1

function hideandseek:lobby/block
function system:tools/sort_players