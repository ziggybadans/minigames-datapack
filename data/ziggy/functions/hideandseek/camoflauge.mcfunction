scoreboard players set @s camoflauged 1

replaceitem entity @s armor.head air

title @s actionbar {"text":"\u2b1b \u2b1b \u2b1b \u2b1b \u2b1b \u2b1b","color":"dark_green"}

teleport ~ ~-1 ~
execute align xyz positioned ~0.5 ~1 ~0.5 run summon shulker ~ ~ ~ {ActiveEffects:[{Id:14b,ShowParticles:false}],NoAI:true,NoGravity:true,Tags:[hideandseek]}
scoreboard players operation @e[type=zombie,scores={playerID=0},tag=hideandseek] playerID = @s playerID