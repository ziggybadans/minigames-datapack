## Loops
execute in minecraft:hs-seacliff if score hide_seek game matches 1 run function hideandseek:game_loop

## playerID
#execute as @e unless score @s playerID >= #base playerID run scoreboard players operation @s playerID = #base playerID

execute as @a if score @s justleft matches 1 run function system:left

## Timers
execute unless score lobby hs_timers matches -1 run scoreboard players add lobby_cooldown hs_timers 1
execute if score lobby_cooldown hs_timers matches 11 unless score lobby hs_timers matches -1 run scoreboard players set lobby_cooldown hs_timers 0

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

## Game Tracking
# 0 = not in game, 1 = triggered, 2 = joining, 3 = joined
execute as @a unless score @s play_hideandseek matches 1 unless score @s play_hideandseek matches 2 run scoreboard players enable @s play_hideandseek
execute as @a unless score @s play_hideandseek matches 1 unless score @s play_hideandseek matches 2 run scoreboard players enable @s play_bedwars

execute as @a if score @s play_hideandseek matches 1 run tellraw @s {"text": "Joining...","italic": true}
execute as @a if score @s play_hideandseek matches 1 run scoreboard players reset @s lobby_cooldown
execute in minecraft:hs-seacliff as @a unless score @s play_hideandseek matches 0 unless score @s play_hideandseek matches 3 run function hideandseek:lobby/lobby_wait

execute as @a if score @s play_hideandseek matches 3 run scoreboard players enable @s hs_block
execute as @a if score @s play_hideandseek matches 3 run scoreboard players enable @s seeker_queue