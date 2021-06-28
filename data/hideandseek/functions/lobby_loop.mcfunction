## Timers
execute unless score currentID playerID matches 4 run scoreboard players set lobby hs_timers 400

## playerID
execute as @a[team=hideandseek] if score currentIDtrue playerID < currentID playerID run function system:tools/balance

## Titles
execute store result score currentIDtrue playerID run team list hide_seek

execute unless score lobby hs_timers matches -1 run bossbar set hs:lobby players @a[tag=hideandseek]
execute store result bossbar hs:lobby value run scoreboard players get currentID playerID

execute if score currentID playerID matches 0 run bossbar set hs:lobby name {"text": "- more players needed"}
execute if score currentID playerID matches 1 run bossbar set hs:lobby name {"text": "3 more players needed"}
execute if score currentID playerID matches 2 run bossbar set hs:lobby name {"text": "2 more players needed"}
execute if score currentID playerID matches 3 run bossbar set hs:lobby name {"text": "1 more players needed"}

execute if score currentID playerID matches 4 run bossbar set hs:lobby color green
execute if score currentID playerID matches 4 run bossbar set hs:lobby name {"text": "Starting game..."}

execute if score currentID playerID matches 4 if score lobby hs_timers matches 400 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 20 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 380 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 19 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 360 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 18 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 340 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 17 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 320 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 16 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 300 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 15 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 280 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 14 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 260 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 13 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 240 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 12 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 220 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 11 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 200 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 10 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 180 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 9 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 160 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 8 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 140 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 7 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 120 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 6 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 100 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 5 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 80 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 4 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 60 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 3 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 40 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 2 seconds...", "color": "green", "bold": true}
execute if score currentID playerID matches 4 if score lobby hs_timers matches 20 run title @a[tag=hideandseek] actionbar {"text": "Starting game in 1 seconds...", "color": "green", "bold": true}

execute if score currentID playerID matches 4 unless score lobby hs_timers matches 0 unless score lobby hs_timers matches -1 run scoreboard players remove lobby hs_timers 1
execute if score lobby hs_timers matches 0 run function hideandseek:start

