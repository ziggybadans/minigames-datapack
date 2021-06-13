execute if score debugging settings matches 1 run tellraw @s {"text": "Removing role trackers", "italic": true}
scoreboard players reset * hs_block
scoreboard objectives remove hs_block

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing teams", "italic": true}
team remove hiders
team remove seekers

scoreboard players reset * hide_seek_timer
scoreboard objectives remove hide_seek_timer

scoreboard players reset * sneaking_timer
scoreboard objectives remove sneaking_timer

scoreboard players reset * camoflauged
scoreboard objectives remove camoflauged

scoreboard players reset * walk
scoreboard objectives remove walk

bossbar remove camoflauge_time

scoreboard objectives remove camo_cooldown
