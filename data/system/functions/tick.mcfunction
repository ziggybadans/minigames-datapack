## Loops
# Fix this later
execute if score hs-seacliff game matches 1 run scoreboard players set HS_LOBBYLOOP game 1

execute if score hs-seacliff game matches 2 run scoreboard players set HS_GAMELOOP game 2

execute if score hs-seacliff game matches 0 run scoreboard players set HS_GAMELOOP game 0
execute if score hs-seacliff game matches 0 run scoreboard players set HS_LOBBYLOOP game 0

execute as @a[team=hide_seek] if score HS_LOBBYLOOP game matches 1 run function hideandseek:lobby/lobby_loop
execute as @a[team=hide_seek] if score HS_GAMELOOP game matches 1 run function hideandseek:game_loop

## playerID
execute store result score currentIDtrue pID-seacliff run execute if entity @a[team=hide_seek, tag=hs-seacliff]

## Game Tracking
# Enables joining a hide and seek game for all players without a tag (in the lobby)
scoreboard players enable @s[tag=] play_hideandseek

# If the in-built lobby joining system is in place, it uses that to track the games
execute if score auto_lobby settings matches 1 as @a[tag=] run function system:game_tracking/autolobby
#execute if score auto_lobby settings matches 0 as @a[tag=] run function system:game_tracking/standard

## Position Tracking
scoreboard players add position timers 1
execute if score position timers matches 6 run scoreboard players set position timers 0

execute if score position timers matches 0 as @a store result score @s pos1_X run data get entity @s Pos[0] 10
execute if score position timers matches 0 as @a store result score @s pos1_Y run data get entity @s Pos[1] 10
execute if score position timers matches 0 as @a store result score @s pos1_Z run data get entity @s Pos[2] 10

execute if score position timers matches 3 as @a store result score @s pos2_X run data get entity @s Pos[0] 10
execute if score position timers matches 3 as @a store result score @s pos2_Y run data get entity @s Pos[1] 10
execute if score position timers matches 3 as @a store result score @s pos2_Z run data get entity @s Pos[2] 10

execute as @a if score @s pos2_X = @s pos1_X run scoreboard players set @s moving 0
execute as @a if score @s pos2_Y = @s pos1_Y run scoreboard players set @s moving 0
execute as @a if score @s pos2_Z = @s pos1_Z run scoreboard players set @s moving 0
execute as @a unless score @s pos2_X = @s pos1_X run scoreboard players set @s moving 1
execute as @a unless score @s pos2_Y = @s pos1_Y run scoreboard players set @s moving 1
execute as @a unless score @s pos2_Z = @s pos1_Z run scoreboard players set @s moving 1