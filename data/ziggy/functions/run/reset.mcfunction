tellraw @a {"text": "Resetting game...", "bold": true}

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting bed tracker", "italic": true}
scoreboard players set red_bed bd 0
scoreboard players set yellow_bed bd 0
scoreboard players set green_bed bd 0
scoreboard players set blue_bed bd 0

scoreboard players set @a bd 0

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting death tracker", "italic": true}
scoreboard players reset * dead

execute if score debugging settings matches 1 if score installed setup matches 1 run tellraw @s {"text": "Resetting teams", "italic": true}
team leave @a[team=!]

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
scoreboard players set * settings 0

scoreboard players set bedsplaced setup 1