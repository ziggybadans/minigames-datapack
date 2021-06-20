#bedwars
#execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=red] if block ~ ~ ~ air if score red_bed bd matches 0 run function ziggy:bedwars/game/bed_d/red_bd
#execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=yellow] if block ~ ~ ~ air if score yellow_bed bd matches 0 run function ziggy:bedwars/game/bed_d/yellow_bd
#execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=green] if block ~ ~ ~ air if score green_bed bd matches 0 run function ziggy:bedwars/game/bed_d/green_bd
#execute if score bedwars game matches 1 if score installed setup matches 1 at @e[type=item_frame,tag=blue] if block ~ ~ ~ air if score blue_bed bd matches 0 run function ziggy:bedwars/game/bed_d/blue_bd

execute if score bedwars game matches 1 if score installed setup matches 1 if block 0 65 0 air if score red_bed bd matches 0 run function ziggy:bedwars/game/bed_d/red_bd
execute if score bedwars game matches 1 if score installed setup matches 1 if block -6 65 6 air if score yellow_bed bd matches 0 run function ziggy:bedwars/game/bed_d/yellow_bd
execute if score bedwars game matches 1 if score installed setup matches 1 if block -6 65 -6 air if score green_bed bd matches 0 run function ziggy:bedwars/game/bed_d/green_bd
execute if score bedwars game matches 1 if score installed setup matches 1 if block -12 65 0 air if score blue_bed bd matches 0 run function ziggy:bedwars/game/bed_d/blue_bd

execute if score bedwars game matches 1 if score installed setup matches 1 as @a[scores={bd=1,dead=1}] run function ziggy:bedwars/game/dead

execute as @a at @s if entity @s[y=-30,dy=15] run function ziggy:bedwars/tools/tp

execute if score bedwars game matches 1 run function ziggy:bedwars/game/summoner_loop

#hideandseek
bossbar set hs_lobby players @a[tag=hideandseek]
execute store result bossbar hs_lobby value run scoreboard players get currentID playerID
execute if score currentID playerID matches 0 run bossbar set hs_lobby name {"text": "2 more players needed!"}
execute if score currentID playerID matches 1 run bossbar set hs_lobby name {"text": "1 more players needed!"}

execute unless score currentID playerID matches 2 run bossbar set hs_lobby color blue
execute unless score currentID playerID matches 2 run bossbar set hs_lobby style notched_10
execute unless score currentID playerID matches 2 run bossbar set hs_lobby max 10

execute if score currentID playerID matches 2 run bossbar set hs_lobby color green
execute if score currentID playerID matches 2 run bossbar set hs_lobby style progress
execute if score currentID playerID matches 2 run bossbar set hs_lobby max 300
execute if score currentID playerID matches 2 run bossbar set hs_lobby name {"text": "Starting game..."}
execute if score currentID playerID matches 2 store result bossbar hs_lobby value run scoreboard players get hs_lobby timer
execute unless score nextID playerID > #minimum playerID run scoreboard players set hs_lobby timer 300
execute if score nextID playerID > #minimum playerID unless score hs_lobby timer matches 0 run scoreboard players remove hs_lobby timer 1
execute if score hs_lobby timer matches 0 run function ziggy:hideandseek/start

execute if score hide_seek game matches 1 run scoreboard players add hider_warning timer 1
execute if score hider_warning timer matches 45 run scoreboard players set hider_warning timer 0
execute as @a[team=hiders] at @s anchored feet if score hide_seek game matches 1 run function ziggy:hideandseek/hider
execute as @a[team=seekers] at @s if score hide_seek game matches 1 run function ziggy:hideandseek/seeker
#hide_seek -> game: 0 = not playing, 1 = in game

execute as @a[scores={walk=1..},limit=1] if data entity @s {OnGround:1b} run scoreboard players remove @s walk 1
scoreboard players set @a[scores={walk=1..}] walk 1

execute if score hide_seek game matches 1 unless score hs_timer game matches 0 run scoreboard players remove hs_timer game 1
execute if score hs_timer game matches 0 unless score hs_endtimer game matches 0 run function ziggy:hideandseek/end

#all
execute as @e unless score @s playerID >= #base playerID run scoreboard players operation @s playerID = #base playerID

scoreboard players add position timer 1
execute if score position timer matches 6 run scoreboard players set position timer 0

execute if score position timer matches 0 as @a store result score @s pos1_X run data get entity @s Pos[0] 10
execute if score position timer matches 0 as @a store result score @s pos1_Y run data get entity @s Pos[1] 10
execute if score position timer matches 0 as @a store result score @s pos1_Z run data get entity @s Pos[2] 10

execute if score position timer matches 3 as @a store result score @s pos2_X run data get entity @s Pos[0] 10
execute if score position timer matches 3 as @a store result score @s pos2_Y run data get entity @s Pos[1] 10
execute if score position timer matches 3 as @a store result score @s pos2_Z run data get entity @s Pos[2] 10

execute as @a if score @s pos2_X = @s pos1_X run scoreboard players set @s true_moving 0
execute as @a if score @s pos2_Y = @s pos1_Y run scoreboard players set @s true_moving 0
execute as @a if score @s pos2_Z = @s pos1_Z run scoreboard players set @s true_moving 0
execute as @a unless score @s pos2_X = @s pos1_X run scoreboard players set @s true_moving 1
execute as @a unless score @s pos2_Y = @s pos1_Y run scoreboard players set @s true_moving 1
execute as @a unless score @s pos2_Z = @s pos1_Z run scoreboard players set @s true_moving 1
