## Constants
# Applies invisibility to all shulkers in hide and seek
execute if score hs-seacliff game matches 1 run effect give @e[type=shulker, team=hide_seek, tag=hs-seacliff] invisibility 1000000 0 true

## playerID
execute store result score count_hiders pID-seacliff run execute if entity @a[team=hiders, tag=hs-seacliff]
execute store result score count_seekers pID-seacliff run execute if entity @a[team=seekers, tag=hs-seacliff]

## Functions
execute as @s[team=hiders] at @s anchored feet run function hideandseek:hider/hider_loop
execute as @s[team=seekers] at @s run function hideandseek:seeker/seeker_loop
execute as @s[team=seekers] run function hideandseek:item_loop

# If the game_length timer hits its end, run the game ending function until the game fully ends
execute if score game_length hs_t-seacliff matches 0 unless score end_cooldown hs_t-seacliff matches 0 run function hideandseek:end/seacliff
# If no players are left in a team, the game ends
execute if score count_hiders pID-seacliff matches 0 unless score game_length hs_t-seacliff matches 0 run function hideandseek:end/seacliff
execute if score count_seekers pID-seacliff matches 0 unless score game_length hs_t-seacliff matches 0 run function hideandseek:end/seacliff

## Timers
### Hider Warning Timer
scoreboard players add hider_warning hs_t-seacliff 1
execute if score hider_warning hs_t-seacliff matches 45 run scoreboard players set hider_warning hs_t-seacliff 0

### Seeker Item Rotation
scoreboard players add item_rotation hs_t-seacliff 0
execute if score item_rotation hs_t-seacliff matches 80 run scoreboard players add ir-seacliff hs_block 1
execute if score item_rotation hs_t-seacliff matches 81 run scoreboard players set item_rotation hs_t-seacliff 0
execute if score item_rotation hs_t-seacliff > hs_b-seacliff range run scoreboard players set ir-seacliff hs_block 0

### Global
execute unless score game_length hs_t-seacliff matches 0 run scoreboard players remove game_length hs_t-seacliff 1

## Bossbars
# Store game length in bossbar
execute store result bossbar hs-seacliff:game_length value run scoreboard players get game_length hs_t-seacliff
# Set game lenght to be visible to all players playing hide and seek
bossbar set hs-seacliff:game_length players @a[team=hide_seek, tag=hs-seacliff]