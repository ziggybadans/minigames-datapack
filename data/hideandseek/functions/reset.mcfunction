scoreboard players set @s play_hideandseek 0
scoreboard players set @s hs-seacliff 0

## Lobby
scoreboard players reset @s lobby_waiting
execute if score hs-seacliff game matches 4 run scoreboard players operation gc-seacliff hs_timers = gc-seacliff settings

## Start
scoreboard players reset #q_has_players seeker_queue
scoreboard players reset @s seeker_timer
scoreboard players reset @s camouflaged

## Game
scoreboard players reset @s hs_block
execute if score hs-seacliff game matches 4 run scoreboard players reset hc-seacliff hs_playerID
execute if score hs-seacliff game matches 4 run scoreboard players reset sc-seacliff hs_playerID
execute if score hs-seacliff game matches 4 run scoreboard players set gl-seacliff hs_timers 24000
execute if score hs-seacliff game matches 4 run scoreboard players set ec-seacliff hs_timers 300
scoreboard players set hider_warning hs_timers 0
execute if score hs-seacliff game matches 4 run scoreboard players set ir-seacliff hs_timers 0
execute if score hs-seacliff game matches 4 run scoreboard players set ir-seacliff hs_block 0
scoreboard players reset @s dead

## Hider
scoreboard players reset @s sneaking_timer
scoreboard players reset @s camo_cooldown

## playerID
scoreboard players reset @s hs_playerID
execute if score hs-seacliff game matches 4 run scoreboard players set cID_hs-seacliff hs_playerID 0
execute if score hs-seacliff game matches 4 run scoreboard players set cIDtrue_hs-seacliff hs_playerID 0
execute if score hs-seacliff game matches 4 run scoreboard players set nID_hs-seacliff hs_playerID 1

## Bossbars
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:lobby value 0
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:lobby players
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:lobby name {"text": "- more players needed!"}
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:lobby color blue
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:game_length value 0
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:game_length players
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:game_length name {"text": "Hide and Seek", "bold": true}

## Global
execute if score hs-seacliff game matches 4 run scoreboard players reset @e[tag=hide_seek, tag=hs-seacliff, type=!player] hs_playerID
execute if score hs-seacliff game matches 4 run kill @e[tag=hide_seek, tag=hs-seacliff, type=!player]
clear @s
effect clear @s

tag @s remove hs-seacliff
team leave @s
gamemode adventure @s
scoreboard players set hs-seacliff game 0