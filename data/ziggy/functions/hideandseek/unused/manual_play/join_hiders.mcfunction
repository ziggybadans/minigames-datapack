team join hiders @s

#execute as @a unless score @s playerID = nextID playerID run function ziggy:sort_players

tellraw @s ["",{"text":"Pick a block:","bold":true},"\n",{"text":"Oak Leaves","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 1"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"oak_leaves\",\"Count\":1}"}},"\n",{"text":"Hopper","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 2"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"hopper\",\"Count\":1}"}},"\n",{"text":"Jungle Wood","italic":true,"clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run scoreboard players set @s hs_block 3"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"jungle_wood\",\"Count\":1}"}}]

#scoreboard players set hide_seek game 1
#scoreboard players set @a[team=hiders] camoflauged 0