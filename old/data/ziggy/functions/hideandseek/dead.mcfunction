title @s subtitle {"text":"You will respawn in 10 seconds."}
title @s title {"text":"You were killed!","color":"dark_red"}

gamemode survival @s
clear @s
effect clear @s

scoreboard players set @s seeker_timer 200

team join seekers @s
scoreboard players set @s dead 2