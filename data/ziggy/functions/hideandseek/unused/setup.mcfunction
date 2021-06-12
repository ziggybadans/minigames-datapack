execute unless score @s playerID = nextID playerID run function ziggy:hideandseek/sort_players
scoreboard players set hide_seek game 1
#scoreboard players set queue game 1
#summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone",Count:1b}],HandItems:[{},{}],Tags:[hide_seek]}
#execute as @e[type=armor_stand,tag=hide_seek] unless score @s playerID matches 1 run function ziggy:hideandseek/armorstand_sort
#scoreboard players 