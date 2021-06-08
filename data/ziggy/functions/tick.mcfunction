#bedwars
execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=red] if block ~ ~ ~ air if score red_bed bd matches 0 run function ziggy:bedwars/game/bed_d/red_bd
execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=yellow] if block ~ ~ ~ air if score yellow_bed bd matches 0 run function ziggy:bedwars/game/bed_d/yellow_bd
execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=green] if block ~ ~ ~ air if score green_bed bd matches 0 run function ziggy:bedwars/game/bed_d/green_bd
execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=blue] if block ~ ~ ~ air if score blue_bed bd matches 0 run function ziggy:bedwars/game/bed_d/blue_bd

execute if score bedwars game matches 1 if score installed setup matches 1 as @a[scores={bd=1,dead=1}] run function ziggy:bedwars/game/dead

execute as @a at @s if entity @s[y=-30,dy=15] run function ziggy:bedwars/tools/tp

execute if score bedwars game matches 1 run function ziggy:bedwars/game/summoner_loop

#hideandseek
execute as @a[team=hiders] at @s anchored feet if score hide_seek game matches 1 run function ziggy:hideandseek/hider
execute as @a[team=seekers] at @s anchored feet if score hide_seek game matches 1 run function ziggy:hideandseek/seeker
#hide_seek -> game: 0 = not playing, 1 = in game