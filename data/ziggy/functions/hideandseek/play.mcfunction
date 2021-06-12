team join hiders @r[team=]
team join seekers @r[team=]

scoreboard players set hide_seek game 1

execute as @s unless score @s playerID = nextID playerID run function ziggy:hideandseek/sort_players