## Timers
# Until the players needed is acheived, hold the lobby timer
execute unless score currentID_hs-seacliff hs_playerID >= #base settings run scoreboard players operation gc-seacliff hs_timers = gc-seacliff settings
# Once the player count is met, start the lobby timer
execute if score currentID_hs-seacliff hs_playerID >= #base settings unless score gc-seacliff hs_timers <= #zero settings run scoreboard players remove gc-seacliff hs_timers 1

## playerID | Seacliff
# Balances playerIDs if one person leaves
execute as @a[team=hide_seek, tag=hs-seacliff] if score cIDtrue_hs-seacliff hs_playerID < cID_hs-seacliff hs_playerID run execute if score @s hs_playerID > cIDtrue_hs-seacliff hs_playerID run scoreboard players remove @s hs_playerID 1
execute as @a[team=hide_seek, tag=hs-seacliff] if score cIDtrue_hs-seacliff hs_playerID < cID_hs-seacliff hs_playerID run scoreboard players remove nID_hs-seacliff hs_playerID 1
execute as @a[team=hide_seek, tag=hs-seacliff] if score cIDtrue_hs-seacliff hs_playerID < cID_hs-seacliff hs_playerID run scoreboard players remove cID_hs-seacliff hs_playerID 1

## Bossbars
# Show the lobby bossbar while the lobby is active
execute unless score gc-seacliff hs_timers matches -1 run bossbar set hs-seacliff:lobby players @a[team=hide_seek, tag=hs-seacliff]
# Get the lobby player count from the currentID count
execute store result bossbar hs-seacliff:lobby value run scoreboard players get cID_hs-seacliff hs_playerID

# Amount of players that show as needed based on #base
execute if score #base settings matches 2 run function hideandseek:lobby/player_minimums/2_players
execute if score #base settings matches 3 run function hideandseek:lobby/player_minimums/3_players
execute if score #base settings matches 4 run function hideandseek:lobby/player_minimums/4_players
execute if score #base settings matches 5 run function hideandseek:lobby/player_minimums/5_players
execute if score #base settings matches 6 run function hideandseek:lobby/player_minimums/6_players

# Once players needed is achieved, the bossbar changes to start the game
#region Seacliff
execute if score cID_hs-seacliff hs_playerID >= #base settings run bossbar set hs-seacliff:lobby color green
execute if score cID_hs-seacliff hs_playerID >= #base settings run bossbar set hs-seacliff:lobby name {"text": "Starting game..."}

execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 400 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 20 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 380 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 19 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 360 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 18 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 340 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 17 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 320 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 16 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 300 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 15 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 280 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 14 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 260 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 13 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 240 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 12 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 220 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 11 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 200 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 10 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 180 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 9 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 160 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 8 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 140 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 7 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 120 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 6 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 100 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 5 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 80 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 4 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 60 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 3 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 40 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 2 seconds...", "color": "green", "bold": true}
execute if score cID_hs-seacliff hs_playerID >= #base settings if score gc-seacliff hs_timers matches 20 run title @a[team=hide_seek, tag=hs-seacliff] actionbar {"text": "Starting game in 1 second...", "color": "green", "bold": true}
#endregion

## Functions
# Once the game countdown timer reaches 0, the game is started
execute if score gc-seacliff hs_timers matches 0 run scoreboard players set hs-seacliff game 2
execute if score gc-seacliff hs_timers matches 0 run function hideandseek:lobby/start