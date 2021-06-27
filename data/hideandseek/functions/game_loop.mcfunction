## Constants
# Applies invisibility to all shulkers in hide and seek
effect give @e[type=shulker,tag=hideandseek] invisibility 1000000 0 true

## Loops
execute as @a[team=hiders] at @s anchored feet run function hideandseek:hider
execute as @a[team=seekers] at @s run function hideandseek:seeker

# If the game_length timer hits its end, run the game ending function until the game fully ends
execute if score game_length hs_timers matches 0 unless score endtimer hs_timers matches 0 run function hideandseek:end

## Functions

## Timers
# Hider warning timer
scoreboard players add hider_warning hs_timers 1
execute if score hider_warning hs_timers matches 45 run scoreboard players set hider_warning hs_timers 0

# Game length timer
execute unless score game_length hs_timers matches 0 run scoreboard players remove game_length hs_timers 1

## Titles
# Store game_length in bossbar
execute store result bossbar hs:game_length value run scoreboard players get game_length hs_timers
# Set game_length to be visible to all players playing hide and seek
bossbar set hs:game_length players @a[tag=hideandseek]
