execute if score installed setup matches 1 if block 0 65 0 air if score red_bed bd matches 0 run function ziggy:game/bed_d/red_bd
execute if score installed setup matches 1 if block -6 65 6 air if score yellow_bed bd matches 0 run function ziggy:game/bed_d/yellow_bd
execute if score installed setup matches 1 if block -6 65 -6 air if score green_bed bd matches 0 run function ziggy:game/bed_d/green_bd
execute if score installed setup matches 1 if block -12 65 0 air if score blue_bed bd matches 0 run function ziggy:game/bed_d/blue_bd

execute if score installed setup matches 1 as @a[scores={bd=1,dead=1}] run function ziggy:game/dead

execute as @a at @s if entity @s[y=-30,dy=15] run function ziggy:tools/tp

execute as @a[scores={tower_place=1}] at @e[type=armor_stand,team=red,tag=tower] run function ziggy:game/tower