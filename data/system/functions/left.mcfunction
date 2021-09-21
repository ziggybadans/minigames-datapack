#scoreboard players operation 

scoreboard players reset @s hs_block
scoreboard players reset @s play_hideandseek

scoreboard players reset @s lobby_cooldown
scoreboard players reset @s seeker_queue
scoreboard players reset @s seeker_timer
scoreboard players reset @s sneaking_timer

execute if score @s playerID matches 1 run bossbar set hs:camouflage1 players
execute if score @s playerID matches 2 run bossbar set hs:camouflage2 players
execute if score @s playerID matches 3 run bossbar set hs:camouflage3 players
execute if score @s playerID matches 4 run bossbar set hs:camouflage4 players
execute if score @s playerID matches 5 run bossbar set hs:camouflage5 players
execute if score @s playerID matches 6 run bossbar set hs:camouflage6 players
execute if score @s playerID matches 7 run bossbar set hs:camouflage7 players
execute if score @s playerID matches 8 run bossbar set hs:camouflage8 players
execute if score @s playerID matches 9 run bossbar set hs:camouflage9 players
execute if score @s playerID matches 10 run bossbar set hs:camouflage10 players
execute if score @s playerID matches 11 run bossbar set hs:camouflage11 players
execute if score @s playerID matches 12 run bossbar set hs:camouflage12 players
execute if score @s playerID matches 13 run bossbar set hs:camouflage13 players
execute if score @s playerID matches 14 run bossbar set hs:camouflage14 players
execute if score @s playerID matches 15 run bossbar set hs:camouflage15 players
execute if score @s playerID matches 16 run bossbar set hs:camouflage16 players
execute if score @s playerID matches 17 run bossbar set hs:camouflage17 players
execute if score @s playerID matches 18 run bossbar set hs:camouflage18 players
execute if score @s playerID matches 19 run bossbar set hs:camouflage19 players
execute if score @s playerID matches 20 run bossbar set hs:camouflage20 players
execute if score @s playerID matches 21 run bossbar set hs:camouflage21 players
execute if score @s playerID matches 22 run bossbar set hs:camouflage22 players
execute if score @s playerID matches 23 run bossbar set hs:camouflage23 players
execute if score @s playerID matches 24 run bossbar set hs:camouflage24 players

scoreboard players set @s camouflaged 0

scoreboard players reset @s playerID
tag @s remove hideandseek
team leave @s

scoreboard players reset @s justleft