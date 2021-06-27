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
bossbar remove camoflauge_time1
bossbar remove camoflauge_time2
bossbar remove camoflauge_time3
bossbar remove camoflauge_time4
bossbar remove camoflauge_time5
bossbar remove camoflauge_time6
bossbar remove camoflauge_time7
bossbar remove camoflauge_time8
bossbar remove camoflauge_time9

bossbar remove hs_lobby
bossbar remove hs_time
#endregion

tag @a remove hideandseek