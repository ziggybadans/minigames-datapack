execute if score hs-seacliff game matches 4 run title @a[team=hide_seek,tag=hs-seacliff] title {"text":"Hiders win!", "color": "green"}
execute if score hs-seacliff game matches 4 run clear @a[team=hide_seek,tag=hs-seacliff]

execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:game_length color red
execute if score hs-seacliff game matches 4 run bossbar set hs-seacliff:game_length name {"text": "Game ending!", "bold": true}

execute if score hs-seacliff game matches 4 run execute unless score ec-seacliff hs_timers matches 0 run scoreboard players remove ec-seacliff hs_timers 1
execute as @a[team=hide_seek,tag=hs-seacliff] if score ec-seacliff hs_timers matches 0 run function hideandseek:reset