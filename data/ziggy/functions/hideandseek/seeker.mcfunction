execute unless score @s seeker_timer matches 0 run scoreboard players remove @s seeker_timer 1
execute unless score @s seeker_timer matches 0 run teleport @s 0 54 0

# Sword in hand
execute if score @s seeker_timer matches 0 run replaceitem entity @s hotbar.0 netherite_sword{display:{Name:'[{"text":"Block Killer","italic":false,"color":"dark_red","bold":true}]'},Enchantments:[{id:"minecraft:sharpness",lvl:2}]} 1

# Inventory auto-clearing
replaceitem entity @s weapon.offhand air 1
replaceitem entity @s hotbar.1 air 1
replaceitem entity @s hotbar.2 air 1
replaceitem entity @s hotbar.3 air 1
replaceitem entity @s hotbar.4 air 1
replaceitem entity @s hotbar.5 air 1
replaceitem entity @s hotbar.6 air 1
replaceitem entity @s hotbar.7 air 1
replaceitem entity @s hotbar.8 air 1
replaceitem entity @s inventory.0 air 1
replaceitem entity @s inventory.1 air 1
replaceitem entity @s inventory.2 air 1
replaceitem entity @s inventory.3 air 1
replaceitem entity @s inventory.4 air 1
replaceitem entity @s inventory.5 air 1
replaceitem entity @s inventory.6 air 1
replaceitem entity @s inventory.7 air 1
replaceitem entity @s inventory.8 air 1
replaceitem entity @s inventory.9 air 1
replaceitem entity @s inventory.10 air 1
replaceitem entity @s inventory.11 air 1
replaceitem entity @s inventory.12 air 1
replaceitem entity @s inventory.13 air 1
replaceitem entity @s inventory.14 air 1
replaceitem entity @s inventory.15 air 1
replaceitem entity @s inventory.16 air 1
replaceitem entity @s inventory.17 air 1
replaceitem entity @s inventory.18 air 1
replaceitem entity @s inventory.19 air 1
replaceitem entity @s inventory.20 air 1
replaceitem entity @s inventory.21 air 1
replaceitem entity @s inventory.22 air 1
replaceitem entity @s inventory.23 air 1
replaceitem entity @s inventory.24 air 1
replaceitem entity @s inventory.25 air 1
replaceitem entity @s inventory.26 air 1
replaceitem entity @s armor.head air 1
replaceitem entity @s armor.chest air 1
replaceitem entity @s armor.legs air 1
replaceitem entity @s armor.feet air 1