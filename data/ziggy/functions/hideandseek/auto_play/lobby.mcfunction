teleport @s 0 54 0
tag @s add hideandseek
tellraw @s ["",{"text":"What block would you like to be?","bold":true},"\n",{"text":"Jungle Wood","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 1"}},"\n", {"text":"Black Wool","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 2"}},"\n", {"text":"Bricks","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 3"}},"\n",{"text":"Redstone Block","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 4"}},"\n",{"text":"Quartz Pillar","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 5"}},"\n",{"text":"Soul Sand","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 6"}}]
execute as @s run function ziggy:sort_players
