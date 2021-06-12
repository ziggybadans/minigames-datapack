scoreboard players set @s camoflauged 1

replaceitem entity @s armor.head air

title @s actionbar {"text":"\u2b1b \u2b1b \u2b1b \u2b1b \u2b1b \u2b1b","color":"dark_green"}

teleport ~ ~-1 ~

execute if score @s hs_block matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:stone"},Time:570,DropItem:false}
scoreboard players operation @e[type=falling_block,distance=..1,tag=hideandseek] playerID = @s playerID

execute align xyz positioned ~0.5 ~ ~0.5 run summon shulker ~ ~ ~ {ActiveEffects:[{Id:14b,ShowParticles:false}],NoAI:true,Silent:true,NoGravity:true,Tags:[hideandseek]}
scoreboard players operation @e[type=shulker,distance=..1,tag=hideandseek] playerID = @s playerID

effect give @e[type=shulker,tag=hideandseek] invisibility 1000000 1 true