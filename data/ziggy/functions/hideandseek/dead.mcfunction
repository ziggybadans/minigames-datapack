title @s subtitle {"text":"You will respawn in 10 seconds."}
title @s title {"text":"You were killed!","color":"dark_red"}

gamemode survival @s
clear @s
effect clear @s

scoreboard players set @s seeker_timer 200

execute if score @s playerID matches 1 run bossbar set camoflauge_time1 players
execute if score @s playerID matches 2 run bossbar set camoflauge_time2 players
execute if score @s playerID matches 3 run bossbar set camoflauge_time3 players
execute if score @s playerID matches 4 run bossbar set camoflauge_time4 players
execute if score @s playerID matches 5 run bossbar set camoflauge_time5 players
execute if score @s playerID matches 6 run bossbar set camoflauge_time6 players
execute if score @s playerID matches 7 run bossbar set camoflauge_time7 players
execute if score @s playerID matches 8 run bossbar set camoflauge_time8 players
execute if score @s playerID matches 9 run bossbar set camoflauge_time9 players

team join seekers @s
scoreboard players set @s dead 2