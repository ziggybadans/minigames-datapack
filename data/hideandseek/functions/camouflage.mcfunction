scoreboard players set @s camouflaged 1

gamemode spectator @s

execute if score @s hs_block matches 0 align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {NoGravity:true,Tags:[hideandseek],BlockState:{Name:"minecraft:soul_sand"},Time:570,DropItem:false}
scoreboard players operation @e[type=falling_block,distance=..1,tag=hideandseek] playerID = @s playerID

execute align xyz positioned ~0.5 ~ ~0.5 run summon shulker ~ ~ ~ {ActiveEffects:[{Id:14b,ShowParticles:false}],NoAI:true,Silent:true,NoGravity:true,Tags:[hideandseek],Team:hiders}
scoreboard players operation @e[type=shulker,distance=..1,tag=hideandseek] playerID = @s playerID

execute if score @s playerID matches 1 run bossbar set hs:camouflage1 color green
execute if score @s playerID matches 1 run bossbar set hs:camouflage1 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 2 run bossbar set hs:camouflage2 color green
execute if score @s playerID matches 2 run bossbar set hs:camouflage2 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 3 run bossbar set hs:camouflage3 color green
execute if score @s playerID matches 3 run bossbar set hs:camouflage3 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 4 run bossbar set hs:camouflage4 color green
execute if score @s playerID matches 4 run bossbar set hs:camouflage4 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 5 run bossbar set hs:camouflage5 color green
execute if score @s playerID matches 5 run bossbar set hs:camouflage5 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 6 run bossbar set hs:camouflage6 color green
execute if score @s playerID matches 6 run bossbar set hs:camouflage6 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 7 run bossbar set hs:camouflage7 color green
execute if score @s playerID matches 7 run bossbar set hs:camouflage7 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 8 run bossbar set hs:camouflage8 color green
execute if score @s playerID matches 8 run bossbar set hs:camouflage8 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 9 run bossbar set hs:camouflage9 color green
execute if score @s playerID matches 9 run bossbar set hs:camouflage9 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 10 run bossbar set hs:camouflage10 color green
execute if score @s playerID matches 10 run bossbar set hs:camouflage10 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 11 run bossbar set hs:camouflage11 color green
execute if score @s playerID matches 11 run bossbar set hs:camouflage11 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 12 run bossbar set hs:camouflage12 color green
execute if score @s playerID matches 12 run bossbar set hs:camouflage12 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 13 run bossbar set hs:camouflage13 color green
execute if score @s playerID matches 13 run bossbar set hs:camouflage13 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 14 run bossbar set hs:camouflage14 color green
execute if score @s playerID matches 14 run bossbar set hs:camouflage14 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 15 run bossbar set hs:camouflage15 color green
execute if score @s playerID matches 15 run bossbar set hs:camouflage15 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 16 run bossbar set hs:camouflage16 color green
execute if score @s playerID matches 16 run bossbar set hs:camouflage16 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 17 run bossbar set hs:camouflage17 color green
execute if score @s playerID matches 17 run bossbar set hs:camouflage17 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 18 run bossbar set hs:camouflage18 color green
execute if score @s playerID matches 18 run bossbar set hs:camouflage18 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 19 run bossbar set hs:camouflage19 color green
execute if score @s playerID matches 19 run bossbar set hs:camouflage19 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 20 run bossbar set hs:camouflage20 color green
execute if score @s playerID matches 20 run bossbar set hs:camouflage20 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 21 run bossbar set hs:camouflage21 color green
execute if score @s playerID matches 21 run bossbar set hs:camouflage21 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 22 run bossbar set hs:camouflage22 color green
execute if score @s playerID matches 22 run bossbar set hs:camouflage22 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 23 run bossbar set hs:camouflage23 color green
execute if score @s playerID matches 23 run bossbar set hs:camouflage23 name {"text": "Camoflauged!","color": "blue"}
execute if score @s playerID matches 24 run bossbar set hs:camouflage24 color green
execute if score @s playerID matches 24 run bossbar set hs:camouflage24 name {"text": "Camoflauged!","color": "blue"}

scoreboard players set @s camouflaged 2