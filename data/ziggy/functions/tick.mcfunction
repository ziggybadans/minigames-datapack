execute if block 1 65 0 air if score red_bed bd matches 0 run function ziggy:bed_d/red_bd
execute if block -4 65 5 air if score yellow_bed bd matches 0 run function ziggy:bed_d/yellow_bd
execute if block -4 65 -5 air if score green_bed bd matches 0 run function ziggy:bed_d/green_bd
execute if block -9 65 0 air if score blue_bed bd matches 0 run function ziggy:bed_d/blue_bd

execute as @a[scores={bd=1,dead=1}] run function ziggy:dead