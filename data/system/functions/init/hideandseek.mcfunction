#define objective hs_block Tracks the block a hider has selected
scoreboard objectives add hs_block dummy

#define entity hs_lobby Lobby countdown when player count is met
#define entity hs_endtimer Cooldown after game ends

#region Teams
team add hiders "Hiders"
team add seekers "Seekers"

team modify hiders prefix {"text": "[Hider]","color": "grey","bold": true}
team modify hiders color green
team modify hiders collisionRule always
team modify hiders friendlyFire false
team modify hiders nametagVisibility hideForOtherTeams

team modify seekers prefix {"text": "[Seeker]","color": "grey","bold": true}
team modify seekers color red
team modify seekers collisionRule pushOtherTeams
team modify seekers friendlyFire false
team modify seekers nametagVisibility always
#endregion

#define entity hider_warning Visible warning when a seeker is within 15 blocks
scoreboard objectives add sneaking_timer dummy
scoreboard players set #base sneaking_timer 0

#define entity seeker_timer Locks seeker in place until end of timer
scoreboard objectives add seeker_timer dummy
#define entity success Checks if there were any players in the seeker queue
scoreboard objectives add seeker_queue dummy

scoreboard objectives add camouflaged dummy
#define objective camo_cooldown Period where hider is locked in place to prevent accidental movement
scoreboard objectives add camo_cooldown dummy

scoreboard players set hs_block range 5

#region Bossbars
# Camouflaged
bossbar add camoflauge_time1 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time1 color red
bossbar set camoflauge_time1 style progress
bossbar set camoflauge_time1 visible true
bossbar set camoflauge_time1 max 50
bossbar add camoflauge_time2 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time2 color red
bossbar set camoflauge_time2 style progress
bossbar set camoflauge_time2 visible true
bossbar set camoflauge_time2 max 50
bossbar add camoflauge_time3 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time3 color red
bossbar set camoflauge_time3 style progress
bossbar set camoflauge_time3 visible true
bossbar set camoflauge_time3 max 50
bossbar add camoflauge_time4 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time4 color red
bossbar set camoflauge_time4 style progress
bossbar set camoflauge_time4 visible true
bossbar set camoflauge_time4 max 50
bossbar add camoflauge_time5 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time5 color red
bossbar set camoflauge_time5 style progress
bossbar set camoflauge_time5 visible true
bossbar set camoflauge_time5 max 50
bossbar add camoflauge_time6 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time6 color red
bossbar set camoflauge_time6 style progress
bossbar set camoflauge_time6 visible true
bossbar set camoflauge_time6 max 50
bossbar add camoflauge_time7 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time7 color red
bossbar set camoflauge_time7 style progress
bossbar set camoflauge_time7 visible true
bossbar set camoflauge_time7 max 50
bossbar add camoflauge_time8 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time8 color red
bossbar set camoflauge_time8 style progress
bossbar set camoflauge_time8 visible true
bossbar set camoflauge_time8 max 50
bossbar add camoflauge_time9 {"text": "Sneak to camoflauge"}
bossbar set camoflauge_time9 color red
bossbar set camoflauge_time9 style progress
bossbar set camoflauge_time9 visible true
bossbar set camoflauge_time9 max 50
# Lobby player count
bossbar add hs_lobby {"text": "- more players needed!"}
bossbar set hs_lobby visible true
# Game time
bossbar add hs_time {"text": "Hide and Seek", "bold": true}
bossbar set hs_time style notched_20
bossbar set hs_time visible true
bossbar set hs_time max 24000
#endregion

function hideandseek:reset