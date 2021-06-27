#define objective hs_block Tracks the block a hider has selected
scoreboard objectives add hs_block dummy

#define entity lobby Lobby countdown when player count is met
#define entity endtimer Cooldown after game ends

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
bossbar add hs:camouflage1 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage1 color red
bossbar set hs:camouflage1 style progress
bossbar set hs:camouflage1 visible true
bossbar set hs:camouflage1 max 50
bossbar add hs:camouflage2 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage2 color red
bossbar set hs:camouflage2 style progress
bossbar set hs:camouflage2 visible true
bossbar set hs:camouflage2 max 50
bossbar add hs:camouflage3 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage3 color red
bossbar set hs:camouflage3 style progress
bossbar set hs:camouflage3 visible true
bossbar set hs:camouflage3 max 50
bossbar add hs:camouflage4 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage4 color red
bossbar set hs:camouflage4 style progress
bossbar set hs:camouflage4 visible true
bossbar set hs:camouflage4 max 50
bossbar add hs:camouflage5 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage5 color red
bossbar set hs:camouflage5 style progress
bossbar set hs:camouflage5 visible true
bossbar set hs:camouflage5 max 50
bossbar add hs:camouflage6 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage6 color red
bossbar set hs:camouflage6 style progress
bossbar set hs:camouflage6 visible true
bossbar set hs:camouflage6 max 50
bossbar add hs:camouflage7 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage7 color red
bossbar set hs:camouflage7 style progress
bossbar set hs:camouflage7 visible true
bossbar set hs:camouflage7 max 50
bossbar add hs:camouflage8 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage8 color red
bossbar set hs:camouflage8 style progress
bossbar set hs:camouflage8 visible true
bossbar set hs:camouflage8 max 50
bossbar add hs:camouflage9 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage9 color red
bossbar set hs:camouflage9 style progress
bossbar set hs:camouflage9 visible true
bossbar set hs:camouflage9 max 50
# Lobby player count
bossbar add hs:lobby {"text": "- more players needed!"}
bossbar set hs:lobby visible true
bossbar set hs:lobby max 10
bossbar set hs:lobby style notched_10
bossbar set hs:lobby color blue
# Game time
bossbar add hs:game_length {"text": "Hide and Seek", "bold": true}
bossbar set hs:game_length style notched_20
bossbar set hs:game_length visible true
bossbar set hs:game_length max 24000
#endregion

function hideandseek:reset