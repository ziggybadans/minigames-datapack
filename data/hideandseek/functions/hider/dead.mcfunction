title @s subtitle {"text": "You will respawn in 10 seconds..."}
title @s title {"text": "You were killed!", "color": "dark_red"}

team join seekers

gamemode adventure @s
clear @s
effect clear @s

scoreboard players reset @s dead
scoreboard players set @s seeker_timer 200