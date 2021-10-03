clear @a[team=hide_seek,tag=hs-seacliff]

bossbar set hs-seacliff:camouflage1 players
bossbar set hs-seacliff:camouflage2 players
bossbar set hs-seacliff:camouflage3 players
bossbar set hs-seacliff:camouflage4 players
bossbar set hs-seacliff:camouflage5 players
bossbar set hs-seacliff:camouflage6 players
bossbar set hs-seacliff:camouflage7 players
bossbar set hs-seacliff:camouflage8 players
bossbar set hs-seacliff:camouflage9 players
bossbar set hs-seacliff:camouflage10 players
bossbar set hs-seacliff:camouflage11 players
bossbar set hs-seacliff:camouflage12 players
bossbar set hs-seacliff:camouflage13 players
bossbar set hs-seacliff:camouflage14 players
bossbar set hs-seacliff:camouflage15 players
bossbar set hs-seacliff:camouflage16 players
bossbar set hs-seacliff:camouflage17 players
bossbar set hs-seacliff:camouflage18 players
bossbar set hs-seacliff:camouflage19 players
bossbar set hs-seacliff:camouflage20 players
bossbar set hs-seacliff:camouflage21 players
bossbar set hs-seacliff:camouflage22 players
bossbar set hs-seacliff:camouflage23 players
bossbar set hs-seacliff:camouflage24 players

bossbar set hs-seacliff:game_length color red
bossbar set hs-seacliff:game_length name {"text": "Game ending!", "bold": true}

execute unless score end_cooldown hs_t-seacliff matches 0 run scoreboard players remove end_cooldown hs_t-seacliff 1
execute as @a[team=hide_seek,tag=hs-seacliff] if score end_cooldown hs_t-seacliff matches 0 run function hideandseek:reset/seacliff