## Universal
scoreboard players set @s camouflaged 1
scoreboard players set @s sneaking_timer -1
gamemode spectator @s

## Falling Block
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:soul_sand"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] if score @s hs_block matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:redstone_block"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] if score @s hs_block matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:beacon"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] if score @s hs_block matches 3 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:bookshelf"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] if score @s hs_block matches 4 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:chiseled_stone_bricks"}, Time:570, DropItem:false}
### playerID Synchronisation
execute if entity @s[tag=hs-seacliff] run scoreboard players operation @e[type=falling_block, distance=..1, tag=hide_seek, tag=hs-seacliff] pID-seacliff = @s pID-seacliff

## Shulker
execute if entity @s[tag=hs-seacliff] align xyz positioned ~0.5 ~ ~0.5 run summon shulker ~ ~ ~ {NoAI:true, Silent:true, NoGravity:true, Tags:[hide_seek, hs-seacliff]}
### playerID Synchronisation
execute if entity @s[tag=hs-seacliff] run scoreboard players operation @e[type=shulker, distance=..1, tag=hide_seek, tag=hs-seacliff] pID-seacliff = @s pID-seacliff

## Bossbars
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage1 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage1 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage2 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage2 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage3 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage3 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage4 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage4 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage5 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage5 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage6 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage6 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage7 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage7 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage8 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage8 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage9 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage9 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage10 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage10 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage11 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage11 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage12 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage12 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage13 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage13 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage14 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage14 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage15 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage15 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage16 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage16 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage17 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage17 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage18 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage18 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage19 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage19 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage20 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage20 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage21 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage21 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage22 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage22 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage23 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage23 name {"text": "Camoflauged!","color": "blue"}
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage24 color green
execute if entity @s[tag=hs-seacliff, scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage24 name {"text": "Camoflauged!","color": "blue"}

scoreboard players set @s camouflaged 2