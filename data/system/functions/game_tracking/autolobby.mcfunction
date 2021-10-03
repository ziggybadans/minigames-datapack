## Maps
scoreboard players enable @a[scores={play_hideandseek=1}] hs-seacliff
# Any players that have selected play hideandseek have map selection open to them
execute as @a[scores={play_hideandseek=1}] run function system:game_tracking/choose_map

execute as @a[scores={hs-seacliff=1}] run scoreboard players set @s play_hideandseek 2

# If the player 
execute as @a[scores={play_hideandseek=2}] run function hideandseek:lobby/lobby_wait