scoreboard players set hide_seek game 0
clear @a[team=seekers]
execute unless score hs_endtimer game matches 0 run scoreboard players remove hs_endtimer game 1
execute if score hs_endtimer game matches 0 run function ziggy:hideandseek/reset