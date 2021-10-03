clear @a[team=hide_seek,tag=hs-seacliff]

bossbar set hs-seacliff:game_length color red
bossbar set hs-seacliff:game_length name {"text": "Game ending!", "bold": true}

execute unless score ec-seacliff hs_timers matches 0 run scoreboard players remove ec-seacliff hs_timers 1
execute as @a[team=hide_seek,tag=hs-seacliff] if score ec-seacliff hs_timers matches 0 run function hideandseek:reset/seacliff