scoreboard players set @a hs_block -1

team empty hiders
team empty seekers

scoreboard players set hider_warning timer 0
scoreboard players set hs_endtimer game 300

kill @e[tag=hideandseek]

scoreboard players reset @a playerID
scoreboard players set nextID playerID 1

scoreboard players reset * health
scoreboard players reset * dead

clear @a
effect clear @a
teleport @a 0 66 0