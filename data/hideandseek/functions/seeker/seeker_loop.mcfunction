## Universal
execute if score @s seeker_timer matches 0 run gamemode adventure @s

## Timers
execute unless score @s seeker_timer matches 0 run scoreboard players remove @s seeker_timer 1

## Loops
execute unless score @s seeker_timer matches 0 run teleport @s 1 1 1 1 1
execute if score @s seeker_timer matches 0 run teleport @s 2 2 2 2 2

## Inventory Auto-clearing
execute if score @s seeker_timer matches 0 run item replace entity @s hotbar.0 with netherite_sword{display: {Name: '[{"text":"Block Killer","italic":false,"color":"dark_red","bold":true}]'}, Enchantments: [{id: "minecraft:sharpness", lvl: 2}]} 1

item replace entity @s weapon.offhand with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

## Death
execute if score @s dead matches 1 run function hideandseek:seeker/dead