execute if score @s playerID matches 1 run scoreboard players remove @a[scores={playerID=1..}] playerID 1
execute if score @s playerID matches 2 run scoreboard players remove @a[scores={playerID=2..}] playerID 1
execute if score @s playerID matches 3 run scoreboard players remove @a[scores={playerID=3..}] playerID 1
execute if score @s playerID matches 4 run scoreboard players remove @a[scores={playerID=4..}] playerID 1
execute if score @s playerID matches 5 run scoreboard players remove @a[scores={playerID=5..}] playerID 1
execute if score @s playerID matches 6 run scoreboard players remove @a[scores={playerID=6..}] playerID 1
execute if score @s playerID matches 7 run scoreboard players remove @a[scores={playerID=7..}] playerID 1
execute if score @s playerID matches 8 run scoreboard players remove @a[scores={playerID=8..}] playerID 1
execute if score @s playerID matches 9 run scoreboard players remove @a[scores={playerID=9..}] playerID 1

scoreboard players reset @s playerID
scoreboard players remove nextID playerID 1

teleport -7 71 24