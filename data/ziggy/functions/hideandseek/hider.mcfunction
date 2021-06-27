# Block on head
# 1 = soul sand, 2 = jungle wood, 3 = black wool, 4 = redstone block, 5 = quartz pillar, 6 = stone bricks
execute if score @s hs_block matches 0 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head soul_sand 1
execute if score @s hs_block matches 1 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head jungle_wood 1
execute if score @s hs_block matches 2 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head black_wool 1
execute if score @s hs_block matches 3 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head redstone_block 1
execute if score @s hs_block matches 4 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head quartz_pillar 1
execute if score @s hs_block matches 5 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head stone_bricks 1

# Inventory auto-clearing
replaceitem entity @s weapon.offhand air 1
replaceitem entity @s hotbar.0 air 1
replaceitem entity @s hotbar.1 air 1
replaceitem entity @s hotbar.2 air 1
replaceitem entity @s hotbar.3 air 1
replaceitem entity @s hotbar.4 air 1
replaceitem entity @s hotbar.5 air 1
replaceitem entity @s hotbar.6 air 1
replaceitem entity @s hotbar.7 air 1
replaceitem entity @s hotbar.8 air 1
replaceitem entity @s inventory.0 air 1
replaceitem entity @s inventory.1 air 1
replaceitem entity @s inventory.2 air 1
replaceitem entity @s inventory.3 air 1
replaceitem entity @s inventory.4 air 1
replaceitem entity @s inventory.5 air 1
replaceitem entity @s inventory.6 air 1
replaceitem entity @s inventory.7 air 1
replaceitem entity @s inventory.8 air 1
replaceitem entity @s inventory.9 air 1
replaceitem entity @s inventory.10 air 1
replaceitem entity @s inventory.11 air 1
replaceitem entity @s inventory.12 air 1
replaceitem entity @s inventory.13 air 1
replaceitem entity @s inventory.14 air 1
replaceitem entity @s inventory.15 air 1
replaceitem entity @s inventory.16 air 1
replaceitem entity @s inventory.17 air 1
replaceitem entity @s inventory.18 air 1
replaceitem entity @s inventory.19 air 1
replaceitem entity @s inventory.20 air 1
replaceitem entity @s inventory.21 air 1
replaceitem entity @s inventory.22 air 1
replaceitem entity @s inventory.23 air 1
replaceitem entity @s inventory.24 air 1
replaceitem entity @s inventory.25 air 1
replaceitem entity @s inventory.26 air 1
replaceitem entity @s armor.chest air 1
replaceitem entity @s armor.legs air 1
replaceitem entity @s armor.feet air 1

# Effect giving
#effect give @e[team=hiders] invisibility 1000000 1 true

# Heartbeat when near seekers
execute if entity @a[team=seekers, distance=..15] run function ziggy:hideandseek/heartbeat
#execute as @s if score testing_hide_seek game matches 1 run function ziggy:hideandseek/heartbeat

# Camoflauge
# 0 = not, 1 = in progress, 2 = done, 3 = uncamo

execute unless predicate ziggy:is_sneaking run scoreboard players set @s sneaking_timer 0
execute if predicate ziggy:is_sneaking if score @s camoflauged matches 0 run scoreboard players add @s sneaking_timer 1
execute as @s[scores={playerID=1}] store result bossbar camoflauge_time1 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=2}] store result bossbar camoflauge_time2 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=3}] store result bossbar camoflauge_time3 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=4}] store result bossbar camoflauge_time4 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=5}] store result bossbar camoflauge_time5 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=6}] store result bossbar camoflauge_time6 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=7}] store result bossbar camoflauge_time7 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=8}] store result bossbar camoflauge_time8 value run scoreboard players get @s sneaking_timer
execute as @s[scores={playerID=9}] store result bossbar camoflauge_time9 value run scoreboard players get @s sneaking_timer

#execute if score @s true_moving matches 1 run scoreboard players set @s sneaking_timer -10
#execute if score @s true_moving matches 0 if score @s camoflauged matches 0 run scoreboard players add @s sneaking_timer 1

execute as @s if score @s camoflauged matches 0 if score @s playerID matches 1 store result bossbar camoflauge_time1 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 2 store result bossbar camoflauge_time2 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 3 store result bossbar camoflauge_time3 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 4 store result bossbar camoflauge_time4 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 5 store result bossbar camoflauge_time5 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 6 store result bossbar camoflauge_time6 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 7 store result bossbar camoflauge_time7 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 8 store result bossbar camoflauge_time8 value run scoreboard players get @s sneaking_timer
execute as @s if score @s camoflauged matches 0 if score @s playerID matches 9 store result bossbar camoflauge_time9 value run scoreboard players get @s sneaking_timer

execute if score @s sneaking_timer matches 50 if score @s camoflauged matches 0 unless score hs_timer game matches 0 at @s as @s run function ziggy:hideandseek/camoflauge
execute if score @s camoflauged matches 1 if score @s playerID matches 1 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 2 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 3 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 4 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 5 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 6 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 7 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 8 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 9 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 1 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 2 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 3 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 4 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 5 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 6 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 7 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 8 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] {Time:1}
execute if score @s camoflauged matches 2 if score @s playerID matches 9 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] {Time:1}

execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 run scoreboard players add @s camo_cooldown 1

execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 1 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 2 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 3 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 4 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 5 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 6 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 7 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 8 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1]
execute unless score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s playerID matches 9 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1]

# Uncamoflauge
#execute if score @s camoflauged matches 1 if score @e[type=shulker,scores={playerID=1},limit=1] health < shulkerhealth health_constants run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 2 if score @s playerID matches 1 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=1},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 2 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=2},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 3 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=3},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 4 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=4},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 5 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=5},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 6 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=6},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 7 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=7},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 8 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=8},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3
execute if score @s camoflauged matches 2 if score @s playerID matches 9 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=9},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 3

execute if score @s camoflauged matches 2 if data entity @s {HurtTime:10s} run scoreboard players set @s camoflauged 3

execute if score @s camo_cooldown matches 15 if score @s camoflauged matches 2 if score @s true_moving matches 1 run scoreboard players set @s camoflauged 3

execute if score @s camoflauged matches 3 run function ziggy:hideandseek/uncamoflauge

# Death
execute if score @s dead matches 1 run function ziggy:hideandseek/dead