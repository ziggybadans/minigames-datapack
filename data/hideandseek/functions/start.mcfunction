scoreboard players set lobby hs_timers -1

execute store success score success seeker_queue run team join seekers @r[scores={seeker_queue=1},tag=hideandseek]
execute if score success seeker_queue matches 0 run team join seekers @r[tag=hideandseek]
team join hiders @a[team=!seekers,tag=hideandseek]

execute as @a[team=hiders,tag=hideandseek,scores={hs_block=-1}] run function system:tools/random
execute as @a[team=hiders,tag=hideandseek,scores={hs_block=-1}] run scoreboard players operation @s hs_block = @s random

bossbar set hs:camouflage1 players @a[team=hiders,scores={playerID=1}]
bossbar set hs:camouflage2 players @a[team=hiders,scores={playerID=2}]
bossbar set hs:camouflage3 players @a[team=hiders,scores={playerID=3}]
bossbar set hs:camouflage4 players @a[team=hiders,scores={playerID=4}]
bossbar set hs:camouflage5 players @a[team=hiders,scores={playerID=5}]
bossbar set hs:camouflage6 players @a[team=hiders,scores={playerID=6}]
bossbar set hs:camouflage7 players @a[team=hiders,scores={playerID=7}]
bossbar set hs:camouflage8 players @a[team=hiders,scores={playerID=8}]
bossbar set hs:camouflage9 players @a[team=hiders,scores={playerID=9}]

bossbar set hs:lobby players

scoreboard players set @a[team=seekers] seeker_timer 600

gamemode survival @a

scoreboard players set hide_seek game 1
scoreboard players set @a[team=hiders] camouflaged 0