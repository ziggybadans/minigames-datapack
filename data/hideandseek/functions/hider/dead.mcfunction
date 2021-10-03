title @s subtitle {"text": "You will respawn in 10 seconds..."}
title @s title {"text": "You were killed!", "color": "dark_red"}

team join seekers

gamemode adventure @s
clear @s
effect clear @s

scoreboard players reset @s dead
scoreboard players set @s seeker_timer 200

execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=1}] run bossbar set hs-seacliff:camouflage1 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=2}] run bossbar set hs-seacliff:camouflage2 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=3}] run bossbar set hs-seacliff:camouflage3 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=4}] run bossbar set hs-seacliff:camouflage4 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=5}] run bossbar set hs-seacliff:camouflage5 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=6}] run bossbar set hs-seacliff:camouflage6 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=7}] run bossbar set hs-seacliff:camouflage7 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=8}] run bossbar set hs-seacliff:camouflage8 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=9}] run bossbar set hs-seacliff:camouflage9 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=10}] run bossbar set hs-seacliff:camouflage10 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=11}] run bossbar set hs-seacliff:camouflage11 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=12}] run bossbar set hs-seacliff:camouflage12 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=13}] run bossbar set hs-seacliff:camouflage13 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=14}] run bossbar set hs-seacliff:camouflage14 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=15}] run bossbar set hs-seacliff:camouflage15 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=16}] run bossbar set hs-seacliff:camouflage16 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=17}] run bossbar set hs-seacliff:camouflage17 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=18}] run bossbar set hs-seacliff:camouflage18 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=19}] run bossbar set hs-seacliff:camouflage19 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=20}] run bossbar set hs-seacliff:camouflage20 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=21}] run bossbar set hs-seacliff:camouflage21 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=22}] run bossbar set hs-seacliff:camouflage22 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=23}] run bossbar set hs-seacliff:camouflage23 players
execute if entity @s[tag=hs-seacliff,scores={pID-seacliff=24}] run bossbar set hs-seacliff:camouflage24 players