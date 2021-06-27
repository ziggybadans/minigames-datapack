scoreboard players set @s camoflauged 1

gamemode spectator @s

# 1 = soul sand, 2 = jungle wood, 3 = black wool, 4 = redstone block, 5 = quartz pillar, 6 = stone bricks
execute if score @s hs_block matches 0 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:soul_sand"},Time:570,DropItem:false}
execute if score @s hs_block matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:jungle_wood"},Time:570,DropItem:false}
execute if score @s hs_block matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:black_wool"},Time:570,DropItem:false}
execute if score @s hs_block matches 3 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:redstone_block"},Time:570,DropItem:false}
execute if score @s hs_block matches 4 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:quartz_pillar"},Time:570,DropItem:false}
execute if score @s hs_block matches 5 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:stone_bricks"},Time:570,DropItem:false}
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

execute if score @s playerID matches 1 run bossbar set camoflauge_time1 color green
execute if score @s playerID matches 1 run bossbar set camoflauge_time1 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 2 run bossbar set camoflauge_time2 color green
execute if score @s playerID matches 2 run bossbar set camoflauge_time2 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 3 run bossbar set camoflauge_time3 color green
execute if score @s playerID matches 3 run bossbar set camoflauge_time3 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 4 run bossbar set camoflauge_time4 color green
execute if score @s playerID matches 4 run bossbar set camoflauge_time4 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 5 run bossbar set camoflauge_time5 color green
execute if score @s playerID matches 5 run bossbar set camoflauge_time5 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 6 run bossbar set camoflauge_time6 color green
execute if score @s playerID matches 6 run bossbar set camoflauge_time6 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 7 run bossbar set camoflauge_time7 color green
execute if score @s playerID matches 7 run bossbar set camoflauge_time7 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 8 run bossbar set camoflauge_time8 color green
execute if score @s playerID matches 8 run bossbar set camoflauge_time8 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 9 run bossbar set camoflauge_time9 color green
execute if score @s playerID matches 9 run bossbar set camoflauge_time9 name {"text": "Camoflauged!","color": "blue"}

scoreboard players set @s camoflauged 2