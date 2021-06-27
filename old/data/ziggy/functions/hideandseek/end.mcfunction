scoreboard players set hide_seek game 0
clear @a[team=seekers]
bossbar set camoflauge_time1 players
bossbar set camoflauge_time2 players
bossbar set camoflauge_time3 players
bossbar set camoflauge_time4 players
bossbar set camoflauge_time5 players
bossbar set camoflauge_time6 players
bossbar set camoflauge_time7 players
bossbar set camoflauge_time8 players
bossbar set camoflauge_time9 players
bossbar set hs_time color red
bossbar set hs_time name {"text": "Game ending!", "bold": true}
execute unless score hs_endtimer game matches 0 run scoreboard players remove hs_endtimer game 1
execute if score hs_endtimer game matches 0 run function ziggy:hideandseek/reset