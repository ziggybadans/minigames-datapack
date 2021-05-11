scoreboard players remove iron_summoner timer 1
execute if score iron_summoner stage_home matches 0 if score iron_summoner timer matches 0 run scoreboard players set iron_summoner timer 60
execute if score iron_summoner stage_home matches 1 if score iron_summoner timer matches 0 run scoreboard players set iron_summoner timer 50
execute if score iron_summoner stage_home matches 2 if score iron_summoner timer matches 0 run scoreboard players set iron_summoner timer 40
execute if score iron_summoner stage_home matches 3 if score iron_summoner timer matches 0 run scoreboard players set iron_summoner timer 30
execute if score iron_summoner timer matches 1 run summon item -6 68 -8 {Item:{id:"minecraft:iron_ingot", Count:1}}

scoreboard players remove gold_summoner timer 1
execute if score gold_summoner stage_home matches 0 if score gold_summoner timer matches 0 run scoreboard players set gold_summoner timer 120
execute if score gold_summoner stage_home matches 1 if score gold_summoner timer matches 0 run scoreboard players set gold_summoner timer 100
execute if score gold_summoner stage_home matches 2 if score gold_summoner timer matches 0 run scoreboard players set gold_summoner timer 80
execute if score gold_summoner stage_home matches 3 if score gold_summoner timer matches 0 run scoreboard players set gold_summoner timer 60
execute if score gold_summoner timer matches 1 run summon item -6 68 -8 {Item:{id:"minecraft:gold_ingot", Count:1}}

execute if score diamond_summoner stage_home = base stage_home run scoreboard players set diamond_summoner timer 1
execute if score diamond_summoner stage_home = base stage_home run scoreboard players set diamond_summoner stage_home 1
execute if score diamond_summoner stage_home >= base stage_home run scoreboard players remove diamond_summoner timer 1
execute if score diamond_summoner stage_home matches 1 if score diamond_summoner timer matches 0 run scoreboard players set diamond_summoner timer 140
execute if score diamond_summoner stage_home matches 2 if score diamond_summoner timer matches 0 run scoreboard players set diamond_summoner timer 120
execute if score diamond_summoner stage_home matches 3 if score diamond_summoner timer matches 0 run scoreboard players set diamond_summoner timer 100
execute if score diamond_summoner timer matches 1 run summon item -6 68 -8 {Item:{id:"minecraft:diamond", Count:1}}

execute if score emerald_summoner stage_home = base stage_home run scoreboard players set emerald_summoner timer 1
execute if score emerald_summoner stage_home = base stage_home run scoreboard players set emerald_summoner stage_home 1
execute if score emerald_summoner stage_home >= base stage_home run scoreboard players remove emerald_summoner timer 1
execute if score emerald_summoner stage_home matches 1 if score emerald_summoner timer matches 0 run scoreboard players set emerald_summoner timer 220
execute if score emerald_summoner stage_home matches 2 if score emerald_summoner timer matches 0 run scoreboard players set emerald_summoner timer 180
execute if score emerald_summoner stage_home matches 3 if score emerald_summoner timer matches 0 run scoreboard players set emerald_summoner timer 140
execute if score emerald_summoner timer matches 1 run summon item -6 68 -8 {Item:{id:"minecraft:emerald", Count:1}}