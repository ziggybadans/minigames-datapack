function hideandseek:reset

scoreboard players reset * hs_block
scoreboard objectives remove hs_block

team empty hiders
team remove hiders
team empty seekers
team remove seekers

scoreboard players reset * sneaking_timer
scoreboard objectives remove sneaking_timer

scoreboard players reset * seeker_timer
scoreboard objectives remove seeker_timer
scoreboard players reset * seeker_queue
scoreboard objectives remove seeker_queue

scoreboard players reset * camouflaged
scoreboard objectives remove camouflaged
scoreboard players reset * camo_cooldown
scoreboard objectives remove camo_cooldown

#region Bossbars
bossbar remove hs:camouflage1
bossbar remove hs:camouflage2
bossbar remove hs:camouflage3
bossbar remove hs:camouflage4
bossbar remove hs:camouflage5
bossbar remove hs:camouflage6
bossbar remove hs:camouflage7
bossbar remove hs:camouflage8
bossbar remove hs:camouflage9

bossbar remove hs:lobby
bossbar remove hs:game_length
#endregion

tag @a remove hideandseek