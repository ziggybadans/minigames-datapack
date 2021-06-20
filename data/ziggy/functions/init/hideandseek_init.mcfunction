execute if score debugging settings matches 1 run tellraw @s {"text": "Adding role trackers", "italic": true}
scoreboard objectives add hs_block dummy
scoreboard players set @a hs_block -1

scoreboard players set hs_lobby timer 600

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
scoreboard players set base sneaking_timer 0
scoreboard objectives add seeker_timer dummy

scoreboard players set hs_endtimer game 300

scoreboard objectives add camoflauged dummy
scoreboard objectives add camo_cooldown dummy

scoreboard objectives add walk minecraft.custom:walk_one_cm
scoreboard players set moving walk 1

bossbar add camoflauge_time1 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time1 color red
bossbar set camoflauge_time1 style progress
bossbar set camoflauge_time1 visible true
bossbar set camoflauge_time1 max 50
bossbar add camoflauge_time2 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time2 color red
bossbar set camoflauge_time2 style progress
bossbar set camoflauge_time2 visible true
bossbar set camoflauge_time2 max 50
bossbar add camoflauge_time3 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time3 color red
bossbar set camoflauge_time3 style progress
bossbar set camoflauge_time3 visible true
bossbar set camoflauge_time3 max 50
bossbar add camoflauge_time4 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time4 color red
bossbar set camoflauge_time4 style progress
bossbar set camoflauge_time4 visible true
bossbar set camoflauge_time4 max 50
bossbar add camoflauge_time5 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time5 color red
bossbar set camoflauge_time5 style progress
bossbar set camoflauge_time5 visible true
bossbar set camoflauge_time5 max 50
bossbar add camoflauge_time6 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time6 color red
bossbar set camoflauge_time6 style progress
bossbar set camoflauge_time6 visible true
bossbar set camoflauge_time6 max 50
bossbar add camoflauge_time7 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time7 color red
bossbar set camoflauge_time7 style progress
bossbar set camoflauge_time7 visible true
bossbar set camoflauge_time7 max 50
bossbar add camoflauge_time8 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time8 color red
bossbar set camoflauge_time8 style progress
bossbar set camoflauge_time8 visible true
bossbar set camoflauge_time8 max 50
bossbar add camoflauge_time9 {"text": "Stay still to camoflauge"}
bossbar set camoflauge_time9 color red
bossbar set camoflauge_time9 style progress
bossbar set camoflauge_time9 visible true
bossbar set camoflauge_time9 max 50

bossbar add hs_lobby {"text": "- more players needed!"}
bossbar set hs_lobby color blue
bossbar set hs_lobby style notched_10
bossbar set hs_lobby visible true
bossbar set hs_lobby max 10