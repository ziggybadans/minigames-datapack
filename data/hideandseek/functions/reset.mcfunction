scoreboard players set @a hs_block -1

scoreboard players set lobby hs_timers 600
scoreboard players set lobby_cooldown hs_timers 0
scoreboard players set endtimer hs_timers 300

scoreboard players set hider_warning hs_timers 0

scoreboard players set success seeker_queue 0

bossbar set hs:camouflage1 players
bossbar set hs:camouflage2 players
bossbar set hs:camouflage3 players
bossbar set hs:camouflage4 players
bossbar set hs:camouflage5 players
bossbar set hs:camouflage6 players
bossbar set hs:camouflage7 players
bossbar set hs:camouflage8 players
bossbar set hs:camouflage9 players

bossbar set hs:lobby name {"text": "- more players needed!"}
bossbar set hs:lobby color blue
bossbar set hs:lobby style notched_10
bossbar set hs:lobby max 10

bossbar set hs:game_length name {"text": "Hide and Seek", "bold": true}
bossbar set hs:game_length color blue
bossbar set hs:game_length players