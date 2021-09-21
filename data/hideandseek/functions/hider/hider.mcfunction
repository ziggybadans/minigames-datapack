## Inventory Auto-clearing
execute if score @s hs_block matches 0 if score @s camouflaged matches 0 run item replace entity @s armor.head with soul_sand
execute if score @s hs_block matches 1 if score @s camouflaged matches 0 run item replace entity @s armor.head with redstone_block
execute if score @s hs_block matches 2 if score @s camouflaged matches 0 run item replace entity @s armor.head with beacon
execute if score @s hs_block matches 3 if score @s camouflaged matches 0 run item replace entity @s armor.head with bookshelf
execute if score @s hs_block matches 4 if score @s camouflaged matches 0 run item replace entity @s armor.head with chiseled_stone_bricks

item replace entity @s weapon.offhand with air
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

#> Heartbeat (Seeker Warning)
execute if entity @a[team=seekers,distance=..10] run function hideandseek:hider/heartbeat

#> Camouflage
# 0 = not, 1 = in progress, 2 = done, 3 = uncamouflage
execute if score @s sneaking_timer matches 50 if score @s camouflaged matches 0 unless score game_length hs_timers matches 0 at @s as @s run function hideandseek:hider/camouflage

## Sneaking Timer
execute unless predicate hideandseek:is_sneaking run scoreboard players set @s sneaking_timer 0
execute if predicate hideandseek:is_sneaking if score @s camouflaged matches 0 run scoreboard players add @s sneaking_timer 1

## Bossbars
execute as @s[scores={playerID=1}] store result bossbar hs:camouflage1 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=2}] store result bossbar hs:camouflage2 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=3}] store result bossbar hs:camouflage3 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=4}] store result bossbar hs:camouflage4 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=5}] store result bossbar hs:camouflage5 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=6}] store result bossbar hs:camouflage6 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=7}] store result bossbar hs:camouflage7 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=8}] store result bossbar hs:camouflage8 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=9}] store result bossbar hs:camouflage9 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=10}] store result bossbar hs:camouflage10 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=11}] store result bossbar hs:camouflage11 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=12}] store result bossbar hs:camouflage12 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=13}] store result bossbar hs:camouflage13 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=14}] store result bossbar hs:camouflage14 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=15}] store result bossbar hs:camouflage15 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=16}] store result bossbar hs:camouflage16 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=17}] store result bossbar hs:camouflage17 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=18}] store result bossbar hs:camouflage18 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=19}] store result bossbar hs:camouflage19 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=20}] store result bossbar hs:camouflage20 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=21}] store result bossbar hs:camouflage21 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=22}] store result bossbar hs:camouflage22 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=23}] store result bossbar hs:camouflage23 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=24}] store result bossbar hs:camouflage24 value run scoreboard players get @s sneaking_timer

## Falling Block
execute if score @s camouflaged matches 1 if score @s playerID matches 1 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 2 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 3 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 4 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 5 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 6 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 7 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 8 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 9 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 10 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=10},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 11 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=11},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 12 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=12},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 13 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=13},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 14 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=14},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 15 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=15},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 16 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=16},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 17 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=17},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 18 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=18},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 19 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=19},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 20 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=20},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 21 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=21},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 22 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=22},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 23 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=23},limit=1] {Time: 1}
execute if score @s camouflaged matches 1 if score @s playerID matches 24 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=24},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 1 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 2 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 3 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 4 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 5 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 6 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 7 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 8 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 9 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 10 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=10},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 11 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=11},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 12 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=12},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 13 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=13},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 14 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=14},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 15 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=15},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 16 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=16},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 17 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=17},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 18 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=18},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 19 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=19},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 20 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=20},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 21 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=21},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 22 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=22},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 23 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=23},limit=1] {Time: 1}
execute if score @s camouflaged matches 2 if score @s playerID matches 24 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=24},limit=1] {Time: 1}

## Teleporting (Camo Cooldown)
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 run scoreboard players add @s camo_cooldown 1

execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 1 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 2 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 3 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 4 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 5 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 6 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 7 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 8 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 9 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 10 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=10},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 11 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=11},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 12 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=12},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 13 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=13},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 14 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=14},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 15 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=15},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 16 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=16},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 17 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=17},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 18 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=18},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 19 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=19},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 20 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=20},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 21 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=21},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 22 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=22},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 23 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=23},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s playerID matches 24 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=24},limit=1]

#> Uncamouflage
execute if score @s camouflaged matches 2 if score @s playerID matches 1 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=1},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 2 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=2},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 3 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=3},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 4 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=4},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 5 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=5},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 6 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=6},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 7 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=7},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 8 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=8},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 9 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=9},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 10 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=10},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 11 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=11},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 12 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=12},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 13 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=13},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 14 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=14},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 15 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=15},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 16 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=16},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 17 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=17},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 18 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=18},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 19 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=19},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 20 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=20},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 21 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=21},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 22 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=22},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 23 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=23},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if score @s playerID matches 24 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=24},limit=1] {HurtTime: 10s} run scoreboard players set @s camouflaged 3

execute if score @s camouflaged matches 2 if data entity @s {HurtTime: 10} run scoreboard players set @s camouflaged 3

execute if score @s camo_cooldown matches 15 if score @s camouflaged matches 2 if score @s moving matches 1 run scoreboard players set @s camouflaged 3

execute if score @s camouflaged matches 3 run function hideandseek:hider/uncamouflage

#> Death
execute unless score hider_count play_hideandseek matches 1 if score @s dead matches 1 run function hideandseek:hider/dead
execute if score hider_count play_hideandseek matches 1 if score @s dead matches 1 run function hideandseek:hider/dead_last