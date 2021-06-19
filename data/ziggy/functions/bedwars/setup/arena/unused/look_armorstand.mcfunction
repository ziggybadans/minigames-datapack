particle crit ~ ~ ~ 0 0 0 0 1
execute if block ~ ~ ~ air run scoreboard players add tries arena_setup 1
execute unless block ~ ~-1 ~ emerald_block positioned ^ ^ ^10 run function ziggy:bedwars/setup/arena/unused/look_armorstand
execute if score tries arena_setup = radius_detection_threshold arena_setup run function ziggy:bedwars/setup/arena/unused/set_radius