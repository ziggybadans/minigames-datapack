summon area_effect_cloud ~ ~ ~ {Tags: ["random_uuid"], Duration: 4}
execute store result score @s random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s random %= hs_block range
#kill @e[type=area_effect_cloud,tag=random_uuid]