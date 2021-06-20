execute if score debugging settings matches 1 run tellraw @s {"text": "Removing role trackers", "italic": true}
scoreboard players reset * hs_block
scoreboard objectives remove hs_block

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing teams", "italic": true}
team empty hiders
team remove hiders
team empty seekers
team remove seekers

scoreboard players reset * hide_seek_timer
scoreboard objectives remove hide_seek_timer

scoreboard players reset * sneaking_timer
scoreboard objectives remove sneaking_timer

scoreboard players reset * seeker_timer
scoreboard objectives remove seeker_timer

scoreboard players reset * camoflauged
scoreboard objectives remove camoflauged

scoreboard players reset * walk
scoreboard objectives remove walk

bossbar remove camoflauge_time1
bossbar remove camoflauge_time2
bossbar remove camoflauge_time3
bossbar remove camoflauge_time4
bossbar remove camoflauge_time5
bossbar remove camoflauge_time6
bossbar remove camoflauge_time7
bossbar remove camoflauge_time8
bossbar remove camoflauge_time9
bossbar remove hs_lobby

tag @a remove hideandseek

scoreboard objectives remove camo_cooldown

effect clear @a
clear @a
