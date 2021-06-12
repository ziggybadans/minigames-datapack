# Block on head
execute if score @s hs_block matches 1 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head stone 1
execute if score @s hs_block matches 2 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head granite 1
execute if score @s hs_block matches 3 unless score @s camoflauged matches 1 run replaceitem entity @s armor.head polished_granite 1

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

# Effect giving
effect give @s invisibility 1000000 1 true

# Heartbeat when near seekers
execute if entity @a[team=seekers, distance=..15] run function ziggy:hideandseek/heartbeat
##execute as @s if score testing_hide_seek game matches 1 run function ziggy:hideandseek/heartbeat

# Camoflauge
execute unless predicate ziggy:is_sneaking run scoreboard players reset @s sneaking_timer
execute if predicate ziggy:is_sneaking unless score @s camoflauged matches 1 run scoreboard players add @s sneaking_timer 1

execute if score @s sneaking_timer matches 5 run title @s actionbar {"text":"\u2b1b \u0020 \u0020 \u0020 \u0020 \u2b1b","color":"dark_red"}
execute if score @s sneaking_timer matches 35 run title @s actionbar {"text":"\u2b1b \u2b1b \u0020 \u0020 \u2b1b \u2b1b","color":"dark_red"}
execute if score @s sneaking_timer matches 65 run title @s actionbar {"text":"\u2b1b \u2b1b \u2b1b \u2b1b \u2b1b \u2b1b","color":"dark_red"}


execute if score @s sneaking_timer matches 100 unless score @s camoflauged matches 1 at @s as @s run function ziggy:hideandseek/camoflauge
execute if score @s camoflauged matches 1 if score @s playerID matches 1 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 2 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 3 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 4 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 5 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 6 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 7 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 8 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] {Time:1}
execute if score @s camoflauged matches 1 if score @s playerID matches 9 run data merge entity @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] {Time:1}

# Uncamoflauge
#execute if score @s camoflauged matches 1 if score @e[type=shulker,scores={playerID=1},limit=1] health < shulkerhealth health_constants run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 1 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=1},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 2 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=2},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 3 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=3},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 4 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=4},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 5 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=5},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 6 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=6},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 7 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=7},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 8 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=8},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2
execute if score @s camoflauged matches 1 if score @s playerID matches 9 if data entity @e[type=shulker,tag=hideandseek,scores={playerID=9},limit=1] {HurtTime:10s} run scoreboard players set @s camoflauged 2

execute if score @s camoflauged matches 1 if data entity @s {HurtTime:10s} run scoreboard players set @s camoflauged 2

execute if score @s camoflauged matches 1 if score @s walk >= moving walk run scoreboard players set @s camoflauged 2

execute if score @s camoflauged matches 2 run function ziggy:hideandseek/uncamoflauge