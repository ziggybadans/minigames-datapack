## Universal
scoreboard players set @s camouflaged 1
scoreboard players set @s sneaking_timer -1
gamemode spectator @s

## Falling Block
execute if entity @s[tag=hs-seacliff, scores={hs_block=0}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:soul_sand"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=1}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:redstone_block"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=2}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:beacon"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=3}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:bookshelf"}, Time:570, DropItem:false}
execute if entity @s[tag=hs-seacliff, scores={hs_block=4}] align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true, Tags:[hide_seek, hs-seacliff], BlockState:{Name:"minecraft:chiseled_stone_bricks"}, Time:570, DropItem:false}
### playerID Synchronisation
execute if entity @s[tag=hs-seacliff] run scoreboard players operation @e[type=falling_block, distance=..1, tag=hide_seek, tag=hs-seacliff] hs_playerID = @s hs_playerID

## Shulker
execute if entity @s[tag=hs-seacliff] align xyz positioned ~0.5 ~ ~0.5 run summon shulker ~ ~ ~ {NoAI:true, Silent:true, NoGravity:true, Tags:[hide_seek, hs-seacliff]}
### playerID Synchronisation
execute if entity @s[tag=hs-seacliff] run scoreboard players operation @e[type=shulker, distance=..1, tag=hide_seek, tag=hs-seacliff] hs_playerID = @s hs_playerID

scoreboard players set @s camouflaged 2