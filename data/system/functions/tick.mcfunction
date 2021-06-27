## Loops
execute if score hide_seek game matches 1 run function hideandseek:loop

## playerID
execute as @e unless score @s playerID >= #base playerID run scoreboard players operation @s playerID = #base playerID

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