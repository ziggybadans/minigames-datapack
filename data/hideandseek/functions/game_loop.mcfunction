## Constants
# Applies invisibility to all shulkers in hide and seek
effect give @e[type=shulker, team=hide_seek] invisibility 1000000 0 true

## playerID
execute if score hs-seacliff game matches 3 run execute store result score hc-seacliff hs_playerID run execute if entity @a[team=hiders, tag=hs-seacliff]
execute if score hs-seacliff game matches 3 run execute store result score sc-seacliff hs_playerID run execute if entity @a[team=seekers, tag=hs-seacliff]

## Functions
execute as @s[team=hiders] at @s anchored feet run function hideandseek:hider/hider_loop
execute as @s[team=seekers] at @s run function hideandseek:seeker/seeker_loop
execute as @s[team=seekers] run function hideandseek:item_loop

# If the game_length timer hits its end, run the game ending function until the game fully ends
execute if score gl-seacliff hs_timers matches 0 unless score ec-seacliff hs_timers matches 0 if score hc-seacliff hs_playerID > #zero settings run function hideandseek:end_hider
execute if score gl-seacliff hs_timers matches 0 unless score ec-seacliff hs_timers matches 0 if score hc-seacliff hs_playerID > #zero settings run scoreboard players set hs-seacliff game 4
execute if score gl-seacliff hs_timers matches 0 unless score ec-seacliff hs_timers matches 0 if score hc-seacliff hs_playerID = #zero settings run function hideandseek:end_seeker
execute if score gl-seacliff hs_timers matches 0 unless score ec-seacliff hs_timers matches 0 if score hc-seacliff hs_playerID = #zero settings run scoreboard players set hs-seacliff game 4
# If no players are left in a team, the game ends
execute if score hc-seacliff hs_playerID matches 0 unless score gl-seacliff hs_timers matches 0 run function hideandseek:end_seeker
execute if score hc-seacliff hs_playerID matches 0 unless score gl-seacliff hs_timers matches 0 run scoreboard players set hs-seacliff game 4
execute if score sc-seacliff hs_playerID matches 0 unless score gl-seacliff hs_timers matches 0 run function hideandseek:end_hider
execute if score sc-seacliff hs_playerID matches 0 unless score gl-seacliff hs_timers matches 0 run scoreboard players set hs-seacliff game 4

## Timers
### Hider Warning Timer
scoreboard players add hider_warning hs_timers 1
execute if score hider_warning hs_timers matches 45 run scoreboard players set hider_warning hs_timers 0

### Seeker Item Rotation
scoreboard players add item_rotation hs_timers 0
execute if score item_rotation hs_timers matches 80 run scoreboard players add ir-seacliff hs_block 1
execute if score item_rotation hs_timers matches 81 run scoreboard players set item_rotation hs_timers 0
execute if score item_rotation hs_timers > hs_b-seacliff range run scoreboard players set ir-seacliff hs_block 0

### Global
execute unless score gl-seacliff hs_timers matches 0 run scoreboard players remove gl-seacliff hs_timers 1

## Bossbars
# Store game length in bossbar
execute if score hs-seacliff game matches 3 run execute store result bossbar hs-seacliff:game_length value run scoreboard players get gl-seacliff hs_timers
# Set game lenght to be visible to all players playing hide and seek
execute if score hs-seacliff game matches 3 run bossbar set hs-seacliff:game_length players @a[team=hide_seek, tag=hs-seacliff]