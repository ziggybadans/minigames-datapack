tellraw @a {"text": "Resetting game...", "bold": true}

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting bed tracker", "italic": true}
scoreboard players set red_bed bd 0
scoreboard players set yellow_bed bd 0
scoreboard players set green_bed bd 0
scoreboard players set blue_bed bd 0

scoreboard players set @a bd 0

scoreboard players set bedwars game 0

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting death tracker", "italic": true}
scoreboard players reset * dead
scoreboard players set iron_summoner timer 1
scoreboard players set gold_summoner timer 1
scoreboard players set diamond_summoner timer -1
scoreboard players set emerald_summoner timer -1
scoreboard players set iron_summoner stage_home 0
scoreboard players set gold_summoner stage_home 0
scoreboard players set diamond_summoner stage_home -1
scoreboard players set emerald_summoner stage_home -1
scoreboard players set diamond_summoner stage_away -1
scoreboard players set emerald_summoner stage_away -1

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting teams", "italic": true}
team leave @a[team=!]

gamemode survival @a
teleport @a -7 71 24

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting beds", "italic": true}
setblock -1 65 0 red_bed[part=foot,facing=east]
setblock 0 65 0 red_bed[part=head,facing=east]
setblock -6 65 -5 green_bed[part=foot,facing=north]
setblock -6 65 -6 green_bed[part=head,facing=north]
setblock -11 65 0 blue_bed[part=foot,facing=west]
setblock -12 65 0 blue_bed[part=head,facing=west]
setblock -6 65 5 yellow_bed[part=foot,facing=south]
setblock -6 65 6 yellow_bed[part=head,facing=south]

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting settings", "italic": true}
scoreboard players set debugging settings 0

scoreboard players set bedsplaced setup 1