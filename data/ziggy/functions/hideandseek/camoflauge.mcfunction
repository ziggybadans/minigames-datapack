scoreboard players set @s camoflauged 1

gamemode spectator @s

execute if score @s hs_block matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:oak_leaves"},Time:570,DropItem:false}
execute if score @s hs_block matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:hopper"},Time:570,DropItem:false}
execute if score @s hs_block matches 3 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:jungle_wood"},Time:570,DropItem:false}
scoreboard players operation @e[type=falling_block,distance=..1,tag=hideandseek] playerID = @s playerID

execute align xyz positioned ~0.5 ~ ~0.5 run summon shulker ~ ~ ~ {ActiveEffects:[{Id:14b,ShowParticles:false}],NoAI:true,Silent:true,NoGravity:true,Tags:[hideandseek],Team:hiders}
scoreboard players operation @e[type=shulker,distance=..1,tag=hideandseek] playerID = @s playerID

#execute if score @s playerID matches 1 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=1},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 2 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=2},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 3 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=3},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 4 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=4},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 5 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=5},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 6 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=6},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 7 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=7},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 8 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=8},limit=1] ~ ~ ~ ~ ~
#execute if score @s playerID matches 9 run teleport @e[type=falling_block,tag=hideandseek,scores={playerID=9},limit=1] ~ ~ ~ ~ ~

#effect give @e[type=shulker,tag=hideandseek] invisibility 1000000 1 true

bossbar set camoflauge_time color green
bossbar set camoflauge_time name {"text": "Camoflauged!","color": "blue"}

scoreboard players set @s camoflauged 2