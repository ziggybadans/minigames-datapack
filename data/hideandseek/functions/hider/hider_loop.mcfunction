## Inventory Auto-clearing
execute as @s[tag=hs-seacliff, scores={hs_block=0, camouflaged=0}] run item replace entity @s armor.head with soul_sand
execute as @s[tag=hs-seacliff, scores={hs_block=1, camouflaged=0}] run item replace entity @s armor.head with redstone_block
execute as @s[tag=hs-seacliff, scores={hs_block=2, camouflaged=0}] run item replace entity @s armor.head with beacon
execute as @s[tag=hs-seacliff, scores={hs_block=3, camouflaged=0}] run item replace entity @s armor.head with bookshelf
execute as @s[tag=hs-seacliff, scores={hs_block=4, camouflaged=0}] run item replace entity @s armor.head with chiseled_stone_bricks

item replace entity @s weapon.offhand with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.0 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.1 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.2 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.3 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.4 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.5 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.6 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.7 with air
execute if score @s sneaking_timer = #zero settings run item replace entity @s hotbar.8 with air
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
execute if score @s sneaking_timer matches 10 run item replace entity @s hotbar.0 with red_stained_glass_pane
execute if score @s sneaking_timer matches 10 run item replace entity @s hotbar.8 with red_stained_glass_pane
execute if score @s sneaking_timer matches 20 run item replace entity @s hotbar.0 with red_stained_glass_pane
execute if score @s sneaking_timer matches 20 run item replace entity @s hotbar.8 with red_stained_glass_pane
execute if score @s sneaking_timer matches 20 run item replace entity @s hotbar.1 with red_stained_glass_pane
execute if score @s sneaking_timer matches 20 run item replace entity @s hotbar.7 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.0 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.8 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.1 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.7 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.2 with red_stained_glass_pane
execute if score @s sneaking_timer matches 30 run item replace entity @s hotbar.6 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.0 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.8 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.1 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.7 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.2 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.6 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.3 with red_stained_glass_pane
execute if score @s sneaking_timer matches 40 run item replace entity @s hotbar.5 with red_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.0 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.8 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.1 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.7 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.2 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.6 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.3 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.5 with green_stained_glass_pane
execute if score @s sneaking_timer matches 50 run item replace entity @s hotbar.4 with green_stained_glass_pane

execute if score @s sneaking_timer matches 50 if score @s camouflaged matches 0 unless score gl-seacliff hs_timers matches 0 as @s at @s run function hideandseek:hider/camouflage

### Falling Block
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=1}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=1},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=2}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=2},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=3}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=3},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=4}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=4},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=5}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=5},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=6}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=6},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=7}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=7},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=8}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=8},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=9}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=9},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=10}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=10},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=11}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=11},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=12}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=12},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=13}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=13},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=14}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=14},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=15}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=15},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=16}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=16},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=17}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=17},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=18}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=18},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=19}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=19},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=20}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=20},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=21}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=21},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=22}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=22},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=23}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=23},limit=1] {Time: 1}
execute if entity @s[tag=hs-seacliff, scores={camouflaged=1..2, hs_playerID=24}] run data merge entity @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=24},limit=1] {Time: 1}

### Teleportating (Camo cooldown)
execute unless score @s camo_cooldown matches 15 if score @s camouflaged matches 2 run scoreboard players add @s camo_cooldown 1
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=1}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=1},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=2}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=2},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=3}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=3},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=4}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=4},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=5}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=5},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=6}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=6},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=7}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=7},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=8}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=8},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=9}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=9},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=10}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=10},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=11}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=11},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=12}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=12},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=13}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=13},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=14}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=14},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=15}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=15},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=16}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=16},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=17}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=17},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=18}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=18},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=19}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=19},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=20}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=20},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=21}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=21},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=22}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=22},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=23}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=23},limit=1]
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=24}] unless score @s camo_cooldown matches 15 run teleport @e[type=falling_block,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=24},limit=1]

## Uncamouflage
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=1}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=1},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=2}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=2},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=3}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=3},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=4}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=4},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=5}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=5},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=6}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=6},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=7}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=7},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=8}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=8},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=9}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=9},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=10}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=10},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=11}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=11},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=12}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=12},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=13}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=13},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=14}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=14},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=15}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=15},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=16}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=16},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=17}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=17},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=18}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=18},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=19}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=19},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=20}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=20},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=21}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=21},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=22}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=22},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=23}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=23},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[tag=hs-seacliff, scores={camouflaged=2, hs_playerID=24}] if data entity @e[type=shulker,tag=hide_seek,tag=hs-seacliff,scores={hs_playerID=24},limit=1] {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if score @s camouflaged matches 2 if data entity @s {HurtTime:10s} run scoreboard players set @s camouflaged 3
execute if entity @s[scores={camouflaged=2, camo_cooldown=15, moving=1}] run scoreboard players set @s camouflaged 3

execute as @s[scores={camouflaged=3}] run function hideandseek:hider/uncamouflage

## Death
execute unless score hc-seacliff hs_playerID matches 1 as @s[scores={dead=1}] run function hideandseek:hider/dead
execute if score hc-seacliff hs_playerID matches 1 as @s[scores={dead=1}] run function hideandseek:hider/dead_last