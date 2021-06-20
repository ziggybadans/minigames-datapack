bossbar set camoflauge_time1 players @a[team=hiders,scores={playerID=1}]
bossbar set camoflauge_time2 players @a[team=hiders,scores={playerID=2}]
bossbar set camoflauge_time3 players @a[team=hiders,scores={playerID=3}]
bossbar set camoflauge_time4 players @a[team=hiders,scores={playerID=4}]
bossbar set camoflauge_time5 players @a[team=hiders,scores={playerID=5}]
bossbar set camoflauge_time6 players @a[team=hiders,scores={playerID=6}]
bossbar set camoflauge_time7 players @a[team=hiders,scores={playerID=7}]
bossbar set camoflauge_time8 players @a[team=hiders,scores={playerID=8}]
bossbar set camoflauge_time9 players @a[team=hiders,scores={playerID=9}]

scoreboard players set @a[team=seekers] seeker_timer 600

gamemode survival @a

team join hiders steveonthemooon
team join hiders LucasaurusRex
team join seekers theinkysquids

teleport @a[team=hiders] 12 54 0

scoreboard players set hide_seek game 1
scoreboard players set @a[team=hiders] camoflauged 0