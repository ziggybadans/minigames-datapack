scoreboard players set @s play_hideandseek 2
tag @s add hideandseek
team join hide_seek @s
execute as @s run function hideandseek:block
execute as @s run function system:tools/sort_players