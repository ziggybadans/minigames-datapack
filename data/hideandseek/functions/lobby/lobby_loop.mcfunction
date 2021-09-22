## Timers
# Until the players needed is acheived, hold the lobby timer
execute unless score currentID playerID >= #base playerID run scoreboard players set lobby hs_timers 400
# Once the player count is met, start the lobby timer
execute if score currentID playerID >= #base playerID unless score lobby hs_timers matches 0 unless score lobby hs_timers matches -1 run scoreboard players remove lobby hs_timers 1

## Titles
# Gets the true player count from the temporary team count
execute in minecraft:hs-seacliff store result score currentIDtrue playerID run execute positioned 0 52 0 if entity @a[distance=..16, team=hide_seek]

## playerID
# Balances playerIDs if one person leaves
execute as @a[team=hide_seek] if score currentIDtrue playerID < currentID playerID run function system:tools/balance

# Show the lobby bossbar while the lobby is active
execute unless score lobby hs_timers matches -1 run bossbar set hs:lobby players @a[tag=hideandseek]
# Get the lobby player count from the currentID count
execute store result bossbar hs:lobby value run scoreboard players get currentID playerID

# Changes players needed
execute if score #base playerID matches 2 run function hideandseek:lobby/player_minimums/2_players
execute if score #base playerID matches 3 run function hideandseek:lobby/player_minimums/3_players
execute if score #base playerID matches 4 run function hideandseek:lobby/player_minimums/4_players
execute if score #base playerID matches 5 run function hideandseek:lobby/player_minimums/5_players
execute if score #base playerID matches 6 run function hideandseek:lobby/player_minimums/6_players

# Once players needed is acheived, change bossbar to start the game
execute if score currentID playerID >= #base playerID run bossbar set hs:lobby color green
execute if score currentID playerID >= #base playerID run bossbar set hs:lobby name {"text": "Starting game..."}

execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 400 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 20 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 380 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 19 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 360 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 18 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 340 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 17 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 320 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 16 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 300 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 15 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 280 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 14 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 260 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 13 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 240 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 12 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 220 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 11 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 200 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 10 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 180 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 9 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 160 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 8 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 140 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 7 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 120 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 6 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 100 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 5 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 80 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 4 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 60 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 3 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 40 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 2 seconds...", "color": "green", "bold": true}
execute if score currentID playerID >= #base playerID if score lobby hs_timers matches 20 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 1 seconds...", "color": "green", "bold": true}

## Functions
# Once the lobby timer reaches 0, start the game
execute in minecraft:hs-seacliff if score lobby hs_timers matches 0 run function hideandseek:lobby/start

