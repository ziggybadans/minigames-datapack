#define objective hs_block Tracks the block a hider has selected
scoreboard objectives add hs_block dummy

#define entity lobby Lobby countdown when player count is met
#define entity lobby_cooldown
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
bossbar add hs:camouflage10 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage10 color red
bossbar set hs:camouflage10 style progress
bossbar set hs:camouflage10 visible true
bossbar set hs:camouflage10 max 50
bossbar add hs:camouflage11 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage11 color red
bossbar set hs:camouflage11 style progress
bossbar set hs:camouflage11 visible true
bossbar set hs:camouflage11 max 50
bossbar add hs:camouflage12 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage12 color red
bossbar set hs:camouflage12 style progress
bossbar set hs:camouflage12 visible true
bossbar set hs:camouflage12 max 50
bossbar add hs:camouflage13 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage13 color red
bossbar set hs:camouflage13 style progress
bossbar set hs:camouflage13 visible true
bossbar set hs:camouflage13 max 50
bossbar add hs:camouflage14 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage14 color red
bossbar set hs:camouflage14 style progress
bossbar set hs:camouflage14 visible true
bossbar set hs:camouflage14 max 50
bossbar add hs:camouflage15 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage15 color red
bossbar set hs:camouflage15 style progress
bossbar set hs:camouflage15 visible true
bossbar set hs:camouflage15 max 50
bossbar add hs:camouflage16 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage16 color red
bossbar set hs:camouflage16 style progress
bossbar set hs:camouflage16 visible true
bossbar set hs:camouflage16 max 50
bossbar add hs:camouflage17 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage17 color red
bossbar set hs:camouflage17 style progress
bossbar set hs:camouflage17 visible true
bossbar set hs:camouflage17 max 50
bossbar add hs:camouflage18 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage18 color red
bossbar set hs:camouflage18 style progress
bossbar set hs:camouflage18 visible true
bossbar set hs:camouflage18 max 50
bossbar add hs:camouflage19 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage19 color red
bossbar set hs:camouflage19 style progress
bossbar set hs:camouflage19 visible true
bossbar set hs:camouflage19 max 50
bossbar add hs:camouflage20 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage20 color red
bossbar set hs:camouflage20 style progress
bossbar set hs:camouflage20 visible true
bossbar set hs:camouflage20 max 50
bossbar add hs:camouflage21 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage21 color red
bossbar set hs:camouflage21 style progress
bossbar set hs:camouflage21 visible true
bossbar set hs:camouflage21 max 50
bossbar add hs:camouflage22 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage22 color red
bossbar set hs:camouflage22 style progress
bossbar set hs:camouflage22 visible true
bossbar set hs:camouflage22 max 50
bossbar add hs:camouflage23 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage23 color red
bossbar set hs:camouflage23 style progress
bossbar set hs:camouflage23 visible true
bossbar set hs:camouflage23 max 50
bossbar add hs:camouflage24 {"text": "Sneak to camoflauge"}
bossbar set hs:camouflage24 color red
bossbar set hs:camouflage24 style progress
bossbar set hs:camouflage24 visible true
bossbar set hs:camouflage24 max 50
# Lobby player count
bossbar add hs:lobby {"text": "- more players needed!"}
bossbar set hs:lobby visible true
bossbar set hs:lobby max 12
bossbar set hs:lobby style notched_12
bossbar set hs:lobby color blue
# Game time
bossbar add hs:game_length {"text": "Hide and Seek", "bold": true}
bossbar set hs:game_length style notched_20
bossbar set hs:game_length visible true
bossbar set hs:game_length max 24000
#endregion

function hideandseek:reset