scoreboard players reset @a[tag=hideandseek] hs_block
scoreboard players reset @a[tag=hideandseek] play_hideandseek

team empty hiders
team empty seekers

scoreboard players set lobby hs_timers 600
scoreboard players reset * lobby_cooldown
scoreboard players set endtimer hs_timers 300

scoreboard players set hider_warning hs_timers 0
scoreboard players set seeker_block hs_timers 0

scoreboard players reset * seeker_queue
scoreboard players set success seeker_queue 0

scoreboard players reset * seeker_timer
scoreboard players reset * sneaking_timer

scoreboard players reset hider_count play_hideandseek
scoreboard players reset @a playerID

bossbar set hs:camouflage1 players
bossbar set hs:camouflage2 players
bossbar set hs:camouflage3 players
bossbar set hs:camouflage4 players
bossbar set hs:camouflage5 players
bossbar set hs:camouflage6 players
bossbar set hs:camouflage7 players
bossbar set hs:camouflage8 players
bossbar set hs:camouflage9 players
bossbar set hs:camouflage10 players
bossbar set hs:camouflage11 players
bossbar set hs:camouflage12 players
bossbar set hs:camouflage13 players
bossbar set hs:camouflage14 players
bossbar set hs:camouflage15 players
bossbar set hs:camouflage16 players
bossbar set hs:camouflage17 players
bossbar set hs:camouflage18 players
bossbar set hs:camouflage19 players
bossbar set hs:camouflage20 players
bossbar set hs:camouflage21 players
bossbar set hs:camouflage22 players
bossbar set hs:camouflage23 players
bossbar set hs:camouflage24 players

bossbar set hs:lobby name {"text": "- more players needed!"}
bossbar set hs:lobby color blue
bossbar set hs:lobby style notched_10
bossbar set hs:lobby max 10

scoreboard players set hide_seek game 0
scoreboard players set hider_warning hs_timers 0

scoreboard players set @a camouflaged 0

gamemode adventure @a[tag=hideandseek]
teleport @a[tag=hideandseek] 0 52 0
clear @a
execute positioned 65 52 -65 run kill @e[distance=..132, type=item]

tag @a remove hideandseek
scoreboard players reset @a[tag=hideandseek] playerID
scoreboard players set currentID playerID 0
scoreboard players set nextID playerID 1

scoreboard players set game_length hs_timers 24000

bossbar set hs:game_length name {"text": "Hide and Seek", "bold": true}
bossbar set hs:game_length color blue
bossbar set hs:game_length players