scoreboard players set hs_lobby timer -1

execute store success score success seeker_queue run team join seekers @r[scores={seekerqueue=1},tag=hideandseek]
execute if score success seeker_queue matches 0 run team join seekers @r[tag=hideandseek]
team join hiders @a[team=!seekers,tag=hideandseek]

execute as @a[team=hiders,tag=hideandseek,scores={hs_block=-1}] run function ziggy:hideandseek/random
execute as @a[team=hiders,tag=hideandseek,scores={hs_block=-1}] run scoreboard players operation @s hs_block = @s random

bossbar set camoflauge_time1 players @a[team=hiders,scores={playerID=1}]
bossbar set camoflauge_time2 players @a[team=hiders,scores={playerID=2}]
bossbar set camoflauge_time3 players @a[team=hiders,scores={playerID=3}]
bossbar set camoflauge_time4 players @a[team=hiders,scores={playerID=4}]
bossbar set camoflauge_time5 players @a[team=hiders,scores={playerID=5}]
bossbar set camoflauge_time6 players @a[team=hiders,scores={playerID=6}]
bossbar set camoflauge_time7 players @a[team=hiders,scores={playerID=7}]
bossbar set camoflauge_time8 players @a[team=hiders,scores={playerID=8}]
bossbar set camoflauge_time9 players @a[team=hiders,scores={playerID=9}]

bossbar set hs_lobby players

scoreboard players set @a[team=seekers] seeker_timer 600

gamemode survival @a

teleport @a[team=hiders] -32 67 15
teleport @a[team=seekers] -12 66 1

scoreboard players set hide_seek game 1
scoreboard players set @a[team=hiders] camoflauged 0