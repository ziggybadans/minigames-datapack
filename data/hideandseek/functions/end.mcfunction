scoreboard players set hide_seek game 0
clear @a[team=seekers]

#region Bossbars
bossbar set hs:camouflage1 players
bossbar set hs:camouflage2 players
bossbar set hs:camouflage3 players
bossbar set hs:camouflage4 players
bossbar set hs:camouflage5 players
bossbar set hs:camouflage6 players
bossbar set hs:camouflage7 players
bossbar set hs:camouflage8 players
bossbar set hs:camouflage9 players

bossbar set hs:game_length color red

bossbar set hs:game_length name {"text": "Game ending!", "bold": true}
#endregion

execute unless score endtimer hs_timers matches 0 run scoreboard players remove endtimer hs_timers 1
execute if score endtimer hs_timers matches 0 run function hideandseek:reset