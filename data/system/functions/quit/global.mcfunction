tellraw @s {"text": "Removing datapack...", "color": "dark_red", "bold": true}

scoreboard players set installed setup 0

tellraw @s {"text": "Uninstalling bedwars module...", "color": "red", "bold": false}
function system:quit/bedwars
tellraw @s {"text": "Uninstalling hide and seek module...", "color": "red", "bold": false}
function system:quit/hideandseek

scoreboard players reset * game
scoreboard objectives remove game
team remove hide_seek

scoreboard players reset * justleft
scoreboard objectives remove justleft

scoreboard players reset * play_hideandseek
scoreboard objectives remove play_hideandseek
scoreboard players reset * play_bedwars
scoreboard objectives remove play_bedwars

scoreboard players reset * timers
scoreboard players reset * hs_timers
scoreboard players reset * bw_timers
scoreboard objectives remove timers
scoreboard objectives remove hs_timers
scoreboard objectives remove bw_timers

scoreboard players reset * playerID
scoreboard objectives remove playerID

#region Position Tracking
scoreboard players reset * pos1_X
scoreboard players reset * pos1_Y
scoreboard players reset * pos1_Z
scoreboard players reset * pos2_X
scoreboard players reset * pos2_Y
scoreboard players reset * pos2_Z
scoreboard objectives remove pos1_X
scoreboard objectives remove pos1_Y
scoreboard objectives remove pos1_Z
scoreboard objectives remove pos2_X
scoreboard objectives remove pos2_Y
scoreboard objectives remove pos2_Z

scoreboard players reset * moving
scoreboard objectives remove moving
#endregion

scoreboard players reset * health
scoreboard objectives remove health
scoreboard players reset * dead
scoreboard objectives remove dead

scoreboard players reset * random
scoreboard objectives remove random
scoreboard players reset * range
scoreboard objectives remove range

# Temporary fix
kill @e[type=item]

scoreboard players reset * setup
scoreboard objectives remove setup

scoreboard players reset * settings
scoreboard objectives remove settings

tellraw @s {"text": "Datapack removed. We hope to see you again soon!", "color": "red", "bold": true}
tellraw @s ["",{"text":"In order to entirely remove this datapack, make sure to type","italic":true,"color":"gray"},{"text":"/datapack disable \"file/bedwars\"","italic":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable \"file/bedwars\""}}]