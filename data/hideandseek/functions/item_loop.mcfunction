execute store result score #0_count hs_block run execute if entity @a[scores={hs_block=0}, team=hiders]
execute store result score #1_count hs_block run execute if entity @a[scores={hs_block=1}, team=hiders]
execute store result score #2_count hs_block run execute if entity @a[scores={hs_block=2}, team=hiders]
execute store result score #3_count hs_block run execute if entity @a[scores={hs_block=3}, team=hiders]
execute store result score #4_count hs_block run execute if entity @a[scores={hs_block=4}, team=hiders]

execute if score item_rotation hs_block matches 0 if score #0_count hs_block matches 0 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_block matches 0 if score #0_count hs_block matches 1 run item replace entity @a[team=seekers] hotbar.8 with soul_sand 1
execute if score item_rotation hs_block matches 0 if score #0_count hs_block matches 2 run item replace entity @a[team=seekers] hotbar.8 with soul_sand 2

execute if score item_rotation hs_block matches 1 if score #1_count hs_block matches 0 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_block matches 1 if score #1_count hs_block matches 1 run item replace entity @a[team=seekers] hotbar.8 with redstone_block 1
execute if score item_rotation hs_block matches 1 if score #1_count hs_block matches 2 run item replace entity @a[team=seekers] hotbar.8 with redstone_block 2

execute if score item_rotation hs_block matches 2 if score #2_count hs_block matches 0 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_block matches 2 if score #2_count hs_block matches 1 run item replace entity @a[team=seekers] hotbar.8 with beacon 1
execute if score item_rotation hs_block matches 2 if score #2_count hs_block matches 2 run item replace entity @a[team=seekers] hotbar.8 with beacon 2

execute if score item_rotation hs_block matches 3 if score #3_count hs_block matches 0 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_block matches 3 if score #3_count hs_block matches 1 run item replace entity @a[team=seekers] hotbar.8 with bookshelf 1
execute if score item_rotation hs_block matches 3 if score #3_count hs_block matches 2 run item replace entity @a[team=seekers] hotbar.8 with bookshelf 2

execute if score item_rotation hs_block matches 4 if score #4_count hs_block matches 0 run scoreboard players add item_rotation hs_block 1
execute if score item_rotation hs_block matches 4 if score #4_count hs_block matches 1 run item replace entity @a[team=seekers] hotbar.8 with chiseled_stone_bricks 1
execute if score item_rotation hs_block matches 4 if score #4_count hs_block matches 2 run item replace entity @a[team=seekers] hotbar.8 with chiseled_stone_bricks 2