summon item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Fixed:true,Silent:true,Tags:[center]}
#execute as @e[type=item_frame,tag=center] store result score x_centre arena_setup run data get entity @s Pos[0]
#execute as @e[type=item_frame,tag=center] store result score y_centre arena_setup run data get entity @s Pos[1]
#execute as @e[type=item_frame,tag=center] store result score x_centre arena_setup run data get entity @s Pos[2]
scoreboard players set coords arena_setup 1
execute if score debugging settings matches 1 run tellraw @s {"text": "Skipping radius autoselection (not implemented yet)", "italic": true}
scoreboard players set coords arena_setup 2