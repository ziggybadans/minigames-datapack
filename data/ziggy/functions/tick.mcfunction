# Temporarily sets the 'red bed destroyed' value to true (1)
execute if block 0 65 0 air if score @e[type=armor_stand,team=red,limit=1] red_bd matches 0 run scoreboard players set @e[team=red] red_bd 1
execute if entity @e[scores={red_bd=1}] run function ziggy:red_bd