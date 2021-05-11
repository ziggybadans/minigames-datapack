setblock ~ ~ ~ structure_block{mode:"LOAD",name:"ziggy:red_tower",posX:-3,posY:0,posZ:-3}
setblock ~ ~-1 ~ redstone_block
setblock ~ ~-1 ~ air
kill @e[type=armor_stand,tag=tower,team=red,distance=..1]
scoreboard players set @s tower_place 0