gamemode survival @s

execute as @s[scores={playerID=1}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=1}]
execute as @s[scores={playerID=2}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=2}]
execute as @s[scores={playerID=3}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=3}]
execute as @s[scores={playerID=4}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=4}]
execute as @s[scores={playerID=5}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=5}]
execute as @s[scores={playerID=6}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=6}]
execute as @s[scores={playerID=7}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=7}]
execute as @s[scores={playerID=8}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=8}]
execute as @s[scores={playerID=9}] run kill @e[type=shulker,tag=hideandseek,scores={playerID=9}]

execute as @s[scores={playerID=1}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=1}]
execute as @s[scores={playerID=2}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=2}]
execute as @s[scores={playerID=3}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=3}]
execute as @s[scores={playerID=4}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=4}]
execute as @s[scores={playerID=5}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=5}]
execute as @s[scores={playerID=6}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=6}]
execute as @s[scores={playerID=7}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=7}]
execute as @s[scores={playerID=8}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=8}]
execute as @s[scores={playerID=9}] run kill @e[type=falling_block,tag=hideandseek,scores={playerID=9}]

execute if score @s playerID matches 1 run bossbar set camoflauge_time1 color red
execute if score @s playerID matches 1 run bossbar set camoflauge_time1 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 2 run bossbar set camoflauge_time2 color red
execute if score @s playerID matches 2 run bossbar set camoflauge_time2 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 3 run bossbar set camoflauge_time3 color red
execute if score @s playerID matches 3 run bossbar set camoflauge_time3 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 4 run bossbar set camoflauge_time4 color red
execute if score @s playerID matches 4 run bossbar set camoflauge_time4 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 5 run bossbar set camoflauge_time5 color red
execute if score @s playerID matches 5 run bossbar set camoflauge_time5 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 6 run bossbar set camoflauge_time6 color red
execute if score @s playerID matches 6 run bossbar set camoflauge_time6 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 7 run bossbar set camoflauge_time7 color red
execute if score @s playerID matches 7 run bossbar set camoflauge_time7 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 8 run bossbar set camoflauge_time8 color red
execute if score @s playerID matches 8 run bossbar set camoflauge_time8 name {"text": "Sneak to camoflauge"}
execute if score @s playerID matches 9 run bossbar set camoflauge_time9 color red
execute if score @s playerID matches 9 run bossbar set camoflauge_time9 name {"text": "Sneak to camoflauge"}

scoreboard players set @s camoflauged 0
scoreboard players reset @s camo_cooldown