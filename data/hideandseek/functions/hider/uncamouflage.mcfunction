gamemode adventure @s

execute as @s[scores={playerID=1}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=1}]
execute as @s[scores={playerID=2}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=2}]
execute as @s[scores={playerID=3}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=3}]
execute as @s[scores={playerID=4}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=4}]
execute as @s[scores={playerID=5}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=5}]
execute as @s[scores={playerID=6}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=6}]
execute as @s[scores={playerID=7}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=7}]
execute as @s[scores={playerID=8}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=8}]
execute as @s[scores={playerID=9}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=9}]
execute as @s[scores={playerID=10}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=10}]
execute as @s[scores={playerID=11}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=11}]
execute as @s[scores={playerID=12}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=12}]
execute as @s[scores={playerID=13}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=13}]
execute as @s[scores={playerID=14}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=14}]
execute as @s[scores={playerID=15}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=15}]
execute as @s[scores={playerID=16}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=16}]
execute as @s[scores={playerID=17}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=17}]
execute as @s[scores={playerID=18}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=18}]
execute as @s[scores={playerID=19}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=19}]
execute as @s[scores={playerID=20}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=20}]
execute as @s[scores={playerID=21}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=21}]
execute as @s[scores={playerID=22}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=22}]
execute as @s[scores={playerID=23}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=23}]
execute as @s[scores={playerID=24}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=24}]

execute as @s[scores={playerID=1}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=1}]
execute as @s[scores={playerID=2}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=2}]
execute as @s[scores={playerID=3}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=3}]
execute as @s[scores={playerID=4}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=4}]
execute as @s[scores={playerID=5}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=5}]
execute as @s[scores={playerID=6}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=6}]
execute as @s[scores={playerID=7}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=7}]
execute as @s[scores={playerID=8}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=8}]
execute as @s[scores={playerID=9}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=9}]
execute as @s[scores={playerID=10}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=10}]
execute as @s[scores={playerID=11}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=11}]
execute as @s[scores={playerID=12}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=12}]
execute as @s[scores={playerID=13}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=13}]
execute as @s[scores={playerID=14}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=14}]
execute as @s[scores={playerID=15}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=15}]
execute as @s[scores={playerID=16}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=16}]
execute as @s[scores={playerID=17}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=17}]
execute as @s[scores={playerID=18}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=18}]
execute as @s[scores={playerID=19}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=19}]
execute as @s[scores={playerID=20}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=20}]
execute as @s[scores={playerID=21}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=21}]
execute as @s[scores={playerID=22}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=22}]
execute as @s[scores={playerID=23}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=23}]
execute as @s[scores={playerID=24}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=24}]

execute if score @s playerID matches 1 run bossbar set hs:camouflage1 color red
execute if score @s playerID matches 1 run bossbar set hs:camouflage1 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 2 run bossbar set hs:camouflage2 color red
execute if score @s playerID matches 2 run bossbar set hs:camouflage2 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 3 run bossbar set hs:camouflage3 color red
execute if score @s playerID matches 3 run bossbar set hs:camouflage3 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 4 run bossbar set hs:camouflage4 color red
execute if score @s playerID matches 4 run bossbar set hs:camouflage4 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 5 run bossbar set hs:camouflage5 color red
execute if score @s playerID matches 5 run bossbar set hs:camouflage5 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 6 run bossbar set hs:camouflage6 color red
execute if score @s playerID matches 6 run bossbar set hs:camouflage6 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 7 run bossbar set hs:camouflage7 color red
execute if score @s playerID matches 7 run bossbar set hs:camouflage7 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 8 run bossbar set hs:camouflage8 color red
execute if score @s playerID matches 8 run bossbar set hs:camouflage8 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 9 run bossbar set hs:camouflage9 color red
execute if score @s playerID matches 9 run bossbar set hs:camouflage9 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 10 run bossbar set hs:camouflage10 color red
execute if score @s playerID matches 10 run bossbar set hs:camouflage10 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 11 run bossbar set hs:camouflage11 color red
execute if score @s playerID matches 11 run bossbar set hs:camouflage11 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 12 run bossbar set hs:camouflage12 color red
execute if score @s playerID matches 12 run bossbar set hs:camouflage12 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 13 run bossbar set hs:camouflage13 color red
execute if score @s playerID matches 13 run bossbar set hs:camouflage13 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 14 run bossbar set hs:camouflage14 color red
execute if score @s playerID matches 14 run bossbar set hs:camouflage14 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 15 run bossbar set hs:camouflage15 color red
execute if score @s playerID matches 15 run bossbar set hs:camouflage15 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 16 run bossbar set hs:camouflage16 color red
execute if score @s playerID matches 16 run bossbar set hs:camouflage16 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 17 run bossbar set hs:camouflage17 color red
execute if score @s playerID matches 17 run bossbar set hs:camouflage17 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 18 run bossbar set hs:camouflage18 color red
execute if score @s playerID matches 18 run bossbar set hs:camouflage18 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 19 run bossbar set hs:camouflage19 color red
execute if score @s playerID matches 19 run bossbar set hs:camouflage19 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 20 run bossbar set hs:camouflage20 color red
execute if score @s playerID matches 20 run bossbar set hs:camouflage20 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 21 run bossbar set hs:camouflage21 color red
execute if score @s playerID matches 21 run bossbar set hs:camouflage21 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 22 run bossbar set hs:camouflage22 color red
execute if score @s playerID matches 22 run bossbar set hs:camouflage22 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 23 run bossbar set hs:camouflage23 color red
execute if score @s playerID matches 23 run bossbar set hs:camouflage23 name {"text": "Sneak to camouflage"}
execute if score @s playerID matches 24 run bossbar set hs:camouflage24 color red
execute if score @s playerID matches 24 run bossbar set hs:camouflage24 name {"text": "Sneak to camouflage"}

scoreboard players set @s camouflaged 0
scoreboard players reset @s camo_cooldown