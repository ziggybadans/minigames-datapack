## Constants
# Applies invisibility to all shulkers in hide and seek
effect give @e[type=shulker,tag=hideandseek] invisibility 1000000 0 true

## Loops
execute as @a[team=hiders] at @s anchored feet run function hideandseek:hider/hider
execute as @a[team=seekers] at @s run function hideandseek:seeker/seeker
execute as @a[team=seekers] run function hideandseek:item_loop

# If the game_length timer hits its end, run the game ending function until the game fully ends
execute if score game_length hs_timers matches 0 unless score endtimer hs_timers matches 0 run function hideandseek:end

# If no players are left in a team, the game ends
execute store result score countHiders playerID run execute positioned 0 52 0 if entity @a[distance=..132, team=hiders]
execute store result score countSeekers playerID run execute positioned 0 52 0 if entity @a[distance=..132, team=seekers]
execute if score countHiders playerID matches 0 unless score game_length hs_timers matches 0 run function hideandseek:end
execute if score countSeekers playerID matches 0 unless score game_length hs_timers matches 0 run function hideandseek:end

## Timers
# Hider warning timer
scoreboard players add hider_warning hs_timers 1
execute if score hider_warning hs_timers matches 45 run scoreboard players set hider_warning hs_timers 0

scoreboard players add item_rotation hs_timers 1
execute if score item_rotation hs_timers matches 80 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_timers matches 81 run scoreboard players set item_rotation hs_timers 0
execute if score item_rotation hs_block > hs_block range run scoreboard players set item_rotation hs_block 0

# Seeker block-peek timer
#scoreboard players add seeker_block hs_timers 1
#execute if score seeker_block hs_timers matches 

# Game length timer
execute unless score game_length hs_timers matches 0 run scoreboard players remove game_length hs_timers 1

## Titles
# Store game_length in bossbar
execute store result bossbar hs:game_length value run scoreboard players get game_length hs_timers
# Set game_length to be visible to all players playing hide and seek
bossbar set hs:game_length players @a[tag=hideandseek]
