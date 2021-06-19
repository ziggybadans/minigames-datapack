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

scoreboard players set @s camoflauged 0
scoreboard players reset @s camo_cooldown

bossbar set camoflauge_time color red
bossbar set camoflauge_time name {"text": "Stay still to camoflauge"}