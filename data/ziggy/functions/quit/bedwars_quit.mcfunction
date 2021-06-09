execute if score debugging settings matches 1 run tellraw @s {"text": "Removing game state tracker", "italic": true}
scoreboard players reset * game
scoreboard objectives remove game

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing arena setup functionality", "italic": true}
scoreboard players reset * arena_setup
scoreboard objectives remove arena_setup

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing bed and death trackers", "italic": true}
scoreboard players reset * bd
scoreboard objectives remove bd
scoreboard players reset * dead
scoreboard objectives remove dead

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing timers and summoner trackers", "italic": true}
scoreboard players reset * timer
scoreboard objectives remove timer
scoreboard players reset * stage_home
scoreboard objectives remove stage_home
scoreboard players reset * stage_away
scoreboard objectives remove stage_away

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing teams", "italic": true}
team remove red
team remove yellow
team remove green
team remove blue

execute if score debugging settings matches 1 run tellraw @s {"text": "Removing beds", "italic": true}
setblock -1 65 0 air replace
setblock 0 65 0 air replace
setblock -6 65 -5 air replace
setblock -6 65 -6 air replace
setblock -11 65 0 air replace
setblock -12 65 0 air replace
setblock -6 65 5 air replace
setblock -6 65 6 air replace