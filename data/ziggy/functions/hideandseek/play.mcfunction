op @a

tellraw @a ["",{"text":"What team would you like to be on?","bold":true},"\n",{"text":"Hiders","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run function ziggy:hideandseek/join_hiders"}}," ",{"text":"Seekers","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score hide_seek game matches 0 run function ziggy:hideandseek/join_seekers"}}]

#team join hiders @r[team=]
#team join seekers @r[team=]

#scoreboard players set hide_seek game 1

#execute as @a unless score @s playerID = nextID playerID run function ziggy:hideandseek/sort_players

#bossbar set camoflauge_time players @a[team=hiders]

#tellraw @s ["",{"text":"What block would you like to be?","bold":true},"\n",{"text":"Oak Leaves","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s hs_block 1"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"oak_leaves\",\"Count\":1}"}},"\n",{"text":"Hopper","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s hs_block 2"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"hopper\",\"Count\":1}"}},"\n",{"text":"Jungle Wood","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s hs_block 3"},"hoverEvent":{"action":"show_item","value":"{\"id\":\"jungle_wood\",\"Count\":1}"}}]