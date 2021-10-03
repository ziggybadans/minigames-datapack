## Inventory Auto-clearing
execute as @s[tag=hs-seacliff, scores={hs_block=0, camouflaged=0}] run item replace entity @s armor.head with soul_sand
execute as @s[tag=hs-seacliff, scores={hs_block=1, camouflaged=0}] run item replace entity @s armor.head with redstone_block
execute as @s[tag=hs-seacliff, scores={hs_block=2, camouflaged=0}] run item replace entity @s armor.head with beacon
execute as @s[tag=hs-seacliff, scores={hs_block=3, camouflaged=0}] run item replace entity @s armor.head with bookshelf
execute as @s[tag=hs-seacliff, scores={hs_block=4, camouflaged=0}] run item replace entity @s armor.head with chiseled_stone_bricks

item replace entity @s weapon.offhand with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

## Heartbeat (Seeker warning)
execute if entity @a[team=seekers, distance=..10] run function hideandseek:hider/heartbeat

## Timers
### Sneaking Timer
execute unless predicate hideandseek:is_sneaking run scoreboard players set @s sneaking_timer 0
execute if predicate hideandseek:is_sneaking if score @s camouflaged matches 0 run scoreboard players add @s sneaking_timer 1

## Camouflage
execute if score @s sneaking_timer matches 50 if score @s camouflaged matches 0 unless score game_length hs_t-seacliff matches 0 as @s at @s run function hideandseek:hider/camouflage
### Bossbars
execute as @s[tag=hs-seacliff, scores={pID-seacliff=1}] store result bossbar hs-seacliff:camouflage1 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=2}] store result bossbar hs-seacliff:camouflage2 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=3}] store result bossbar hs-seacliff:camouflage3 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=4}] store result bossbar hs-seacliff:camouflage4 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=5}] store result bossbar hs-seacliff:camouflage5 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=6}] store result bossbar hs-seacliff:camouflage6 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=7}] store result bossbar hs-seacliff:camouflage7 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=8}] store result bossbar hs-seacliff:camouflage8 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=9}] store result bossbar hs-seacliff:camouflage9 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=10}] store result bossbar hs-seacliff:camouflage10 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=11}] store result bossbar hs-seacliff:camouflage11 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=12}] store result bossbar hs-seacliff:camouflage12 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=13}] store result bossbar hs-seacliff:camouflage13 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=14}] store result bossbar hs-seacliff:camouflage14 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=15}] store result bossbar hs-seacliff:camouflage15 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=16}] store result bossbar hs-seacliff:camouflage16 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=17}] store result bossbar hs-seacliff:camouflage17 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=18}] store result bossbar hs-seacliff:camouflage18 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=19}] store result bossbar hs-seacliff:camouflage19 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=20}] store result bossbar hs-seacliff:camouflage20 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=21}] store result bossbar hs-seacliff:camouflage21 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=22}] store result bossbar hs-seacliff:camouflage22 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=23}] store result bossbar hs-seacliff:camouflage23 value run scoreboard players get @s sneaking_timer
execute as @s[tag=hs-seacliff, scores={pID-seacliff=24}] store result bossbar hs-seacliff:camouflage24 value run scoreboard players get @s sneaking_timer
### Falling Block
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=1}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=1},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=2}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=2},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=3}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=3},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=4}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=4},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=5}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=5},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=6}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=6},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=7}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=7},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=8}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=8},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=9}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=9},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=10}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=10},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=11}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=11},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=12}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=12},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=13}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=13},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=14}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=14},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=15}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=15},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=16}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=16},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=17}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=17},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=18}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=18},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=19}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=19},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=20}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=20},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=21}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=21},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=22}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=22},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=23}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=23},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, pID-seacliff=24}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=24},limit=1] {Time: 1}
### Teleportating (Camo cooldown)
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 run scoreboard players add @s camo_cooldown 1
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=1}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=1},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=2}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=2},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=3}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=3},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=4}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=4},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=5}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=5},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=6}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=6},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=7}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=7},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=8}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=8},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=9}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=9},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=10}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=10},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=11}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=11},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=12}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=12},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=13}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=13},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=14}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=14},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=15}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=15},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=16}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=16},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=17}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=17},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=18}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=18},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=19}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=19},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=20}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=20},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=21}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=21},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=22}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=22},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=23}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=23},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=24}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=24},limit=1]
## Uncamouflage
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=1}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=1},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=2}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=2},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=3}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=3},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=4}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=4},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=5}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=5},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=6}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=6},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=7}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=7},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=8}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=8},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=9}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=9},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=10}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=10},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=11}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=11},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=12}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=12},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=13}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=13},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=14}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=14},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=15}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=15},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=16}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=16},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=17}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=17},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=18}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=18},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=19}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=19},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=20}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=20},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=21}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=21},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=22}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=22},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=23}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=23},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, pID-seacliff=24}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={pID-seacliff=24},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if data entity @s {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[scores={camouflaged=2, camo_cooldown=15, moving=1}] run scoreboard players set @s camouflaged 3

execute as @s[scores={camouflaged=3}] run function hideandseek:hider/uncamouflage

## Death
execute unless score count_hiders pID-seacliff matches 1 as @s[scores={dead=1}] run function hideandseek:hider/dead
execute if score count_hiders pID-seacliff matches 1 as @s[scores={dead=1}] run function hideandseek:hider/dead_last