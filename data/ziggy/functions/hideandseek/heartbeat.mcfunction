execute if score hider_warning timer matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.5
execute if score hider_warning timer matches 0 run effect give @s slowness 1 1 true
execute if score hider_warning timer matches 5 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 1
execute if score hider_warning timer matches 5 run effect clear @s
title @s actionbar {"text":"Seeker nearby!","color":"red"}