## Timers
# Until the players needed is acheived, hold the lobby timer
execute unless score currentID pID-seacliff >= #base settings run scoreboard players operation game_countdown hs_t-seacliff = game_countdown settings
# Once the player count is met, start the lobby timer
execute if score currentID pID-seacliff >= #base settings unless score game_countdown hs_t-seacliff <= #zero settings run scoreboard players remove game_countdown hs_t-seacliff 1

## playerID | Seacliff
# Balances playerIDs if one person leaves
execute as @a[team=hide_seek, tag=hs-seacliff] if score currentIDtrue pID-seacliff < currentID pID-seacliff run function system:tools/balance

## Bossbars
# Show the lobby bossbar while the lobby is active
execute unless score game_countdown hs_t-seacliff matches -1 run bossbar set hs-seacliff:lobby players @a[team=hide_seek, tag=hs-seacliff]
# Get the lobby player count from the currentID count
execute store result bossbar hs-seacliff:lobby value run scoreboard players get currentID pID-seacliff

# Amount of players that show as needed based on #base
execute if score #base settings matches 2 run function hideandseek:lobby/player_minimums/2_players
execute if score #base settings matches 3 run function hideandseek:lobby/player_minimums/3_players
execute if score #base settings matches 4 run function hideandseek:lobby/player_minimums/4_players
execute if score #base settings matches 5 run function hideandseek:lobby/player_minimums/5_players
execute if score #base settings matches 6 run function hideandseek:lobby/player_minimums/6_players

# Once players needed is achieved, the bossbar changes to start the game
#region Seacliff
execute if score currentID pID-seacliff >= #base settings run bossbar set hs-seacliff:lobby color green
execute if score currentID pID-seacliff >= #base settings run bossbar set hs-seacliff:lobby name {"text": "Starting game..."}

execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 400 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 20 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 380 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 19 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 360 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 18 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 340 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 17 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 320 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 16 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 300 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 15 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 280 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 14 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 260 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 13 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 240 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 12 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 220 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 11 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 200 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 10 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 180 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 9 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 160 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 8 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 140 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 7 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 120 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 6 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 100 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 5 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 80 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 4 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 60 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 3 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 40 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 2 seconds...", "color": "green", "bold": true}
execute if score currentID pID-seacliff >= #base settings if score game_countdown hs_t-seacliff matches 20 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 1 second...", "color": "green", "bold": true}
#endregion

## Functions
# Once the game countdown timer reaches 0, the game is started
execute if score game_countdown hs_t-seacliff matches 0 run function hideandseek:lobby/start/seacliff