tellraw @s {"text": "Removing datapack...", "color": "dark_red", "bold": true}

## Global game tracking
scoreboard players reset * game
scoreboard objectives remove game
team remove hide_seek

## Position Tracking
scoreboard players reset * pos1_X
scoreboard objectives remove pos1_X
scoreboard players reset * pos1_Y
scoreboard objectives remove pos1_Y
scoreboard players reset * pos1_Z
scoreboard objectives remove pos1_Z
scoreboard players reset * pos2_X
scoreboard objectives remove pos2_X
scoreboard players reset * pos2_Y
scoreboard objectives remove pos2_Y
scoreboard players reset * pos2_Z
scoreboard objectives remove pos2_Z
scoreboard players reset * moving
scoreboard objectives remove moving

## Death Tracking
scoreboard players reset * health
scoreboard objectives remove health
scoreboard players reset * dead
scoreboard objectives remove dead

## playerID
scoreboard players reset * justleft
scoreboard objectives remove justleft

## Triggers
scoreboard players reset * play_hideandseek
scoreboard objectives remove play_hideandseek

## Lobby
scoreboard players reset * lobby_waiting
scoreboard objectives remove lobby_waiting

## Tags
tag @a remove hide_seek

## Modules
function system:init/hideandseek