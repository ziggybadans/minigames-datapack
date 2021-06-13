execute if score debugging settings matches 1 run tellraw @s {"text": "Adding role trackers", "italic": true}
scoreboard objectives add hs_block dummy
scoreboard players set @a hs_block -1

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding hider and seeker teams", "italic": true}
team add hiders "Hiders"
team add seekers "Seekers"
team modify hiders color green
team modify hiders collisionRule always
team modify hiders friendlyFire false
team modify hiders nametagVisibility always
team modify hiders prefix {"text": "[Hider]","color": "grey","bold": true}
team modify seekers color red
team modify seekers collisionRule pushOtherTeams
team modify seekers friendlyFire false
team modify seekers nametagVisibility hideForOtherTeams
team modify seekers prefix {"text": "[Seeker]","color": "grey","bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding timers", "italic": true}
scoreboard players set hider_warning timer 0
scoreboard objectives add hide_seek_timer dummy
scoreboard objectives add sneaking_timer dummy

scoreboard objectives add camoflauged dummy
scoreboard objectives add camo_cooldown dummy

scoreboard objectives add walk minecraft.custom:walk_one_cm
scoreboard players set moving walk 1

bossbar add camoflauge_time {"text": "Hold shift to camoflauge!"}
bossbar set camoflauge_time color red
bossbar set camoflauge_time style progress
bossbar set camoflauge_time visible true
bossbar set camoflauge_time max 50