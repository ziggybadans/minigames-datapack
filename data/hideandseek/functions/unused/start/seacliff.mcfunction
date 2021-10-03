# Set game countdown to be inactive
scoreboard players set gc-seacliff hs_timers -1

## Team Sorting
execute store success score #q_has_players seeker_queue run team join seekers @r[scores={seeker_queue=1}, team=hide_seek, tag=hs-seacliff]
execute if score #q_has_players seeker_queue matches 0 run team join seekers @r[team=hide_seek, tag=hs-seacliff]
team join hiders @a[team=!seekers, team=hide_seek, tag=hs-seacliff]

## Block Picking
#execute as @a[team=hiders, team=hide_seek, tag=hs-seacliff, scores={hs_block=-1}] run function system:tools/random
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"], Duration:4}
execute as @a[team=hiders, tag=hs-seacliff, scores={hs_block=-1}] store result score @s random run data get entity @e[type=area_effect_cloud, tag=random_uuid, limit=1] UUID[0] 1
execute as @a[team=hiders, tag=hs-seacliff, scores={hs_block=-1}] run scoreboard players operation @s random %= hs_b-seacliff range
execute as @a[team=hiders, tag=hs-seacliff, scores={hs_block=-1}] run scoreboard players operation @s hs_block = @s random

## Bossbars
bossbar set hs-seacliff:camouflage1 players @a[team=hiders,scores={hs_playerID=1}]
bossbar set hs-seacliff:camouflage2 players @a[team=hiders,scores={hs_playerID=2}]
bossbar set hs-seacliff:camouflage3 players @a[team=hiders,scores={hs_playerID=3}]
bossbar set hs-seacliff:camouflage4 players @a[team=hiders,scores={hs_playerID=4}]
bossbar set hs-seacliff:camouflage5 players @a[team=hiders,scores={hs_playerID=5}]
bossbar set hs-seacliff:camouflage6 players @a[team=hiders,scores={hs_playerID=6}]
bossbar set hs-seacliff:camouflage7 players @a[team=hiders,scores={hs_playerID=7}]
bossbar set hs-seacliff:camouflage8 players @a[team=hiders,scores={hs_playerID=8}]
bossbar set hs-seacliff:camouflage9 players @a[team=hiders,scores={hs_playerID=9}]
bossbar set hs-seacliff:camouflage10 players @a[team=hiders,scores={hs_playerID=10}]
bossbar set hs-seacliff:camouflage11 players @a[team=hiders,scores={hs_playerID=11}]
bossbar set hs-seacliff:camouflage12 players @a[team=hiders,scores={hs_playerID=12}]
bossbar set hs-seacliff:camouflage13 players @a[team=hiders,scores={hs_playerID=13}]
bossbar set hs-seacliff:camouflage14 players @a[team=hiders,scores={hs_playerID=14}]
bossbar set hs-seacliff:camouflage15 players @a[team=hiders,scores={hs_playerID=15}]
bossbar set hs-seacliff:camouflage16 players @a[team=hiders,scores={hs_playerID=16}]
bossbar set hs-seacliff:camouflage17 players @a[team=hiders,scores={hs_playerID=17}]
bossbar set hs-seacliff:camouflage18 players @a[team=hiders,scores={hs_playerID=18}]
bossbar set hs-seacliff:camouflage19 players @a[team=hiders,scores={hs_playerID=19}]
bossbar set hs-seacliff:camouflage20 players @a[team=hiders,scores={hs_playerID=20}]
bossbar set hs-seacliff:camouflage21 players @a[team=hiders,scores={hs_playerID=21}]
bossbar set hs-seacliff:camouflage22 players @a[team=hiders,scores={hs_playerID=22}]
bossbar set hs-seacliff:camouflage23 players @a[team=hiders,scores={hs_playerID=23}]
bossbar set hs-seacliff:camouflage24 players @a[team=hiders,scores={hs_playerID=24}]

bossbar set hs-seacliff:lobby players

## Seeker Set-up
scoreboard players set @a[team=seekers] seeker_timer 600

## Hider Set-up
execute in hs-seacliff run teleport @a[team=hiders] 1 1 1 0 0

## Universal
gamemode adventure @a

scoreboard players set @a[team=hiders] camouflaged 0 
scoreboard players set hs-seacliff game 2