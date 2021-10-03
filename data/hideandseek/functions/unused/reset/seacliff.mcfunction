scoreboard players set @s play_hideandseek 0
scoreboard players set @s hs-seacliff 0

## Lobby
scoreboard players reset @s lobby_waiting
scoreboard players operation gc-seacliff hs_timers = gc-seacliff settings

## Start
scoreboard players reset #q_has_players seeker_queue
scoreboard players reset @s seeker_timer
scoreboard players reset @s camouflaged

## Game
scoreboard players reset @s hs_block
scoreboard players reset hc-seacliff hs_playerID
scoreboard players reset sc-seacliff hs_playerID
scoreboard players set gl-seacliff hs_timers 24000
scoreboard players set ec-seacliff hs_timers 300
scoreboard players set hider_warning hs_timers 0
scoreboard players set ir-seacliff hs_timers 0
scoreboard players set ir-seacliff hs_block 0
scoreboard players reset @s dead

## Hider
scoreboard players reset @s sneaking_timer
scoreboard players reset @s camo_cooldown

## playerID
scoreboard players reset @s hs_playerID
scoreboard players set currentID hs_playerID 0
scoreboard players set currentIDtrue hs_playerID 0
scoreboard players set nextID hs_playerID 1

## Bossbars
bossbar set hs-seacliff:lobby value 0
bossbar set hs-seacliff:lobby players
bossbar set hs-seacliff:lobby name {"text": "- more players needed!"}
bossbar set hs-seacliff:lobby color blue
bossbar set hs-seacliff:game_length value 0
bossbar set hs-seacliff:game_length players
bossbar set hs-seacliff:game_length name {"text": "Hide and Seek", "bold": true}

bossbar set hs-seacliff:camouflage1 value 0
bossbar set hs-seacliff:camouflage1 players
bossbar set hs-seacliff:camouflage1 color red
bossbar set hs-seacliff:camouflage1 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage2 value 0
bossbar set hs-seacliff:camouflage2 players
bossbar set hs-seacliff:camouflage2 color red
bossbar set hs-seacliff:camouflage2 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage3 value 0
bossbar set hs-seacliff:camouflage3 players
bossbar set hs-seacliff:camouflage3 color red
bossbar set hs-seacliff:camouflage3 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage4 value 0
bossbar set hs-seacliff:camouflage4 players
bossbar set hs-seacliff:camouflage4 color red
bossbar set hs-seacliff:camouflage4 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage5 value 0
bossbar set hs-seacliff:camouflage5 players
bossbar set hs-seacliff:camouflage5 color red
bossbar set hs-seacliff:camouflage5 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage6 value 0
bossbar set hs-seacliff:camouflage6 players
bossbar set hs-seacliff:camouflage6 color red
bossbar set hs-seacliff:camouflage6 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage7 value 0
bossbar set hs-seacliff:camouflage7 players
bossbar set hs-seacliff:camouflage7 color red
bossbar set hs-seacliff:camouflage7 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage8 value 0
bossbar set hs-seacliff:camouflage8 players
bossbar set hs-seacliff:camouflage8 color red
bossbar set hs-seacliff:camouflage8 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage9 value 0
bossbar set hs-seacliff:camouflage9 players
bossbar set hs-seacliff:camouflage9 color red
bossbar set hs-seacliff:camouflage9 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage10 value 0
bossbar set hs-seacliff:camouflage10 players
bossbar set hs-seacliff:camouflage10 color red
bossbar set hs-seacliff:camouflage10 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage11 value 0
bossbar set hs-seacliff:camouflage11 players
bossbar set hs-seacliff:camouflage11 color red
bossbar set hs-seacliff:camouflage11 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage12 value 0
bossbar set hs-seacliff:camouflage12 players
bossbar set hs-seacliff:camouflage12 color red
bossbar set hs-seacliff:camouflage12 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage13 value 0
bossbar set hs-seacliff:camouflage13 players
bossbar set hs-seacliff:camouflage13 color red
bossbar set hs-seacliff:camouflage13 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage14 value 0
bossbar set hs-seacliff:camouflage14 players
bossbar set hs-seacliff:camouflage14 color red
bossbar set hs-seacliff:camouflage14 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage15 value 0
bossbar set hs-seacliff:camouflage15 players
bossbar set hs-seacliff:camouflage15 color red
bossbar set hs-seacliff:camouflage15 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage16 value 0
bossbar set hs-seacliff:camouflage16 players
bossbar set hs-seacliff:camouflage16 color red
bossbar set hs-seacliff:camouflage16 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage17 value 0
bossbar set hs-seacliff:camouflage17 players
bossbar set hs-seacliff:camouflage17 color red
bossbar set hs-seacliff:camouflage17 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage18 value 0
bossbar set hs-seacliff:camouflage18 players
bossbar set hs-seacliff:camouflage18 color red
bossbar set hs-seacliff:camouflage18 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage19 value 0
bossbar set hs-seacliff:camouflage19 players
bossbar set hs-seacliff:camouflage19 color red
bossbar set hs-seacliff:camouflage19 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage20 value 0
bossbar set hs-seacliff:camouflage20 players
bossbar set hs-seacliff:camouflage20 color red
bossbar set hs-seacliff:camouflage20 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage21 value 0
bossbar set hs-seacliff:camouflage21 players
bossbar set hs-seacliff:camouflage21 color red
bossbar set hs-seacliff:camouflage21 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage22 value 0
bossbar set hs-seacliff:camouflage22 players
bossbar set hs-seacliff:camouflage22 color red
bossbar set hs-seacliff:camouflage22 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage23 value 0
bossbar set hs-seacliff:camouflage23 players
bossbar set hs-seacliff:camouflage23 color red
bossbar set hs-seacliff:camouflage23 name {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:camouflage24 value 0
bossbar set hs-seacliff:camouflage24 players
bossbar set hs-seacliff:camouflage24 color red
bossbar set hs-seacliff:camouflage24 name {"text": "Hide and Seek", "bold": true}

## Global
scoreboard players reset @e[tag=hide_seek, tag=hs-seacliff, type=!player] hs_playerID
kill @e[tag=hide_seek, tag=hs-seacliff, type=!player]
clear @s
effect clear @s

tag @s remove hs-seacliff
team leave @s
gamemode adventure @s
scoreboard players set hs-seacliff game 0