scoreboard players set @a hs_block -1

team empty hiders
team empty seekers

scoreboard players set hider_warning timer 0
scoreboard players set hs_timer game 24000
scoreboard players set hs_endtimer game 300

scoreboard players reset @a seeker_timer
scoreboard players reset @a camo_cooldown
scoreboard players reset @a sneaking_timer

kill @e[tag=hideandseek]

scoreboard players reset @a playerID
scoreboard players set nextID playerID 1

scoreboard players reset * health
scoreboard players reset * dead

clear @a
effect clear @a
gamemode survival @a
teleport @a -7 71 24

scoreboard players set @a[team=hiders] camoflauged 0

bossbar set camoflauge_time1 players
bossbar set camoflauge_time2 players
bossbar set camoflauge_time3 players
bossbar set camoflauge_time4 players
bossbar set camoflauge_time5 players
bossbar set camoflauge_time6 players
bossbar set camoflauge_time7 players
bossbar set camoflauge_time8 players
bossbar set camoflauge_time9 players
tag @a remove hideandseek

bossbar set hs_lobby color blue
bossbar set hs_lobby style notched_10
bossbar set hs_lobby max 10
bossbar set hs_lobby name {"text": "- more players needed!"}

scoreboard players set hide_seek game 0
