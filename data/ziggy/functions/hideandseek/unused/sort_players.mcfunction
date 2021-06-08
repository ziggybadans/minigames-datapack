scoreboard players operation @s playerID = nextID playerID
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone",Count:1b}],HandItems:[{},{}],Tags:[hide_seek]}
scoreboard players set @e[type=armor_stand,tag=hide_seek] playerID 0
scoreboard players operation @e[type=armor_stand,scores={playerID=0}] playerID = @s playerID
scoreboard players add nextID playerID 1