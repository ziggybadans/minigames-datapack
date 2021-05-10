execute if score installed setup matches 1 if block COORDINATES_GO_HERE air if score red_bed bd matches 0 run function ziggy:game/bed_d/red_bd
execute if score installed setup matches 1 if block COORDINATES_GO_HERE air if score yellow_bed bd matches 0 run function ziggy:game/bed_d/yellow_bd
execute if score installed setup matches 1 if block COORDINATES_GO_HERE air if score green_bed bd matches 0 run function ziggy:game/bed_d/green_bd
execute if score installed setup matches 1 if block COORDINATES_GO_HERE air if score blue_bed bd matches 0 run function ziggy:game/bed_d/blue_bd

execute if score installed setup matches 1 as @a[scores={bd=1,dead=1}] run function ziggy:game/dead