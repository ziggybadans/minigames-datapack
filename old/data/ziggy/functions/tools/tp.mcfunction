## Red
execute if score red_bed bd matches 0 if entity @s[team=red] run teleport @s 0.5 66.5 0.5
execute if score red_bd bd matches 0 run effect give @s slow_falling 2 1 true
## Yellow
execute if score yellow_bed bd matches 0 if entity @s[team=yellow] run teleport @s -6.5 65.5 6.5
execute if score yellow_bed bd matches 0 run effect give @s slow_falling 2 1 true
## Green
execute if score green_bed bd matches 0 if entity @s[team=green] run teleport @s -6.5 65.5 -6.5
execute if score red_bed bd matches 0 run effect give @s slow_falling 2 1 true
## Blue
execute if score blue_bed bd matches 0 if entity @s[team=blue] run teleport @s -12.5 65.5 0.5
execute if score red_bed bd matches 0 run effect give @s slow_falling 2 1 true