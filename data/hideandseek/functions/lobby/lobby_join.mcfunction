gamemode adventure @s

scoreboard players set @s play_hideandseek 4
# Add tag for map management
execute as @a[scores={hs-seacliff=1}] run tag @s add hs-seacliff
# Add team for lobby management
team join hide_seek

# Teleport to map
execute as @a[tag=hs-seacliff] in hs-seacliff run teleport 1 1 1

function hideandseek:lobby/block

execute if entity @s[tag=hs-seacliff] run scoreboard players operation @s hs_playerID = nextID_hs-seacliff hs_playerID
execute if entity @s[tag=hs-seacliff] run scoreboard players add cID_hs-seacliff hs_playerID 1
execute if entity @s[tag=hs-seacliff] run scoreboard players add nextID_hs-seacliff hs_playerID 1

#function system:tools/sort_players