## Declarations
#declare dimension hs-seacliff
#declare tag hs-seacliff
#declare tag hide_seek Similar to the team hide_seek, but for ease of use with mobs

## Blocks
#define objective hs_block Tracks the block a hider has selected
scoreboard objectives add hs_block trigger "Hide&Seek Block"

#> playerID
# Tracks the amount of players in a game and manages if a player leaves 
#define objective pID-seacliff
scoreboard objectives add pID-seacliff dummy "playerIDs | Seacliff"

scoreboard players set nextID pID-seacliff 1
scoreboard players set currentID pID-seacliff 0
scoreboard players set #base settings 2
scoreboard players set currentIDtrue pID-seacliff 0

#define score_holder count_hiders The amount of hiders in a game
scoreboard players set count_hiders pID-seacliff 0
#define score_holder count_seekers The amount of seekers in a game
scoreboard players set count_seekers pID-seacliff 0

## Timers
#define objective hs_t-seacliff Timers for Hide&Seek Seacliff map
scoreboard objectives add hs_t-seacliff dummy "Hide&Seek Timers | Seacliff"
#define score_holder game_countdown Timer for game to start once #base is achieved
scoreboard players operation game_countdown hs_t-seacliff = game_countdown settings
#define score_holder #zero A zero score for ease of use with timers
scoreboard players set #zero settings 0
#define score_holder game_length Length of Hide&Seek game
scoreboard players operation game_length hs_t-seacliff = game_length settings
#define score_holder end_cooldown Waiting period in-between game ending and the end function running
scoreboard players set end_cooldown hs_t-seacliff 300
#define score_holder hider_warning Visible warning when a seeker is within 15 blocks
scoreboard players set hider_warning hs_t-seacliff 0
#define score_holder item_rotation Interval for rotating between blocks in the seeker's hotbar
scoreboard players set item_rotation hs_t-seacliff 0
#define score_holder ir-seacliff Value in hs_block for what block is showing in hotbar at that interval
scoreboard players set ir-seacliff hs_block 0
#define objective sneaking_timer Measures how long someone has been sneaking to camouflage
scoreboard objectives add sneaking_timer dummy

## Teams
#define team seekers
team add seekers "Seekers"
team modify seekers prefix {"text": "[Seeker]", "bold": true}
team modify seekers color red
team modify seekers collisionRule pushOtherTeams
team modify seekers friendlyFire false
team modify seekers nametagVisibility always
#define team hiders
team add hiders "Hiders"
team modify hiders prefix {"text": "[Hider]", "bold": true}
team modify hiders color green
team modify hiders collisionRule always
team modify hiders friendlyFire false
team modify hiders nametagVisibility hideForOtherTeams

## Seekers
### Seeker Queue
#define objective sq-seacliff A queue for players to join for seeker, randomly chosen from
scoreboard objectives add sq-seacliff dummy "Seeker Queue | Seacliff"
#define score_holder #q_has_players Stores success value of random selection from seeker queue
### Seeker Timer
#define objective seeker_timer Locks seeker in place until end of timer
scoreboard objectives add seeker_timer dummy
## Hiders
#define objective camouflaged Checks whether hider is camouflaged | 0 = uncamouflaged, 1 = in progress, 2 = done, 3 = uncamouflaging
scoreboard objectives add camouflaged dummy
#define objective camo_cooldown Period where hider is locked in place to prevent accidental movement
scoreboard objectives add camo_cooldown dummy
### Blocks
#define objective hs_b_count How many players are hiding as certain blocks
scoreboard objectives add hs_b_count dummy
#declare score_holder #*_count-*

## Maps
#define objective hs-seacliff
scoreboard objectives add hs-seacliff trigger

## Bossbars
#region Seacliff
#define bossbar hs-seacliff:camouflage* Bossbars for camouflage status for hiders | Seacliff map
#define bossbar hs-seacliff:lobby Bossbar for Seacliff lobby player count
#define bossbar hs-seacliff:game_length Bossbar for Seacliff game time
#region Camouflage
bossbar add hs-seacliff:camouflage1 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage1 color red
bossbar set hs-seacliff:camouflage1 style progress
bossbar set hs-seacliff:camouflage1 visible true
bossbar set hs-seacliff:camouflage1 max 50
bossbar add hs-seacliff:camouflage2 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage2 color red
bossbar set hs-seacliff:camouflage2 style progress
bossbar set hs-seacliff:camouflage2 visible true
bossbar set hs-seacliff:camouflage2 max 50
bossbar add hs-seacliff:camouflage3 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage3 color red
bossbar set hs-seacliff:camouflage3 style progress
bossbar set hs-seacliff:camouflage3 visible true
bossbar set hs-seacliff:camouflage3 max 50
bossbar add hs-seacliff:camouflage4 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage4 color red
bossbar set hs-seacliff:camouflage4 style progress
bossbar set hs-seacliff:camouflage4 visible true
bossbar set hs-seacliff:camouflage4 max 50
bossbar add hs-seacliff:camouflage5 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage5 color red
bossbar set hs-seacliff:camouflage5 style progress
bossbar set hs-seacliff:camouflage5 visible true
bossbar set hs-seacliff:camouflage5 max 50
bossbar add hs-seacliff:camouflage6 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage6 color red
bossbar set hs-seacliff:camouflage6 style progress
bossbar set hs-seacliff:camouflage6 visible true
bossbar set hs-seacliff:camouflage6 max 50
bossbar add hs-seacliff:camouflage7 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage7 color red
bossbar set hs-seacliff:camouflage7 style progress
bossbar set hs-seacliff:camouflage7 visible true
bossbar set hs-seacliff:camouflage7 max 50
bossbar add hs-seacliff:camouflage8 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage8 color red
bossbar set hs-seacliff:camouflage8 style progress
bossbar set hs-seacliff:camouflage8 visible true
bossbar set hs-seacliff:camouflage8 max 50
bossbar add hs-seacliff:camouflage9 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage9 color red
bossbar set hs-seacliff:camouflage9 style progress
bossbar set hs-seacliff:camouflage9 visible true
bossbar set hs-seacliff:camouflage9 max 50
bossbar add hs-seacliff:camouflage10 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage10 color red
bossbar set hs-seacliff:camouflage10 style progress
bossbar set hs-seacliff:camouflage10 visible true
bossbar set hs-seacliff:camouflage10 max 50
bossbar add hs-seacliff:camouflage11 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage11 color red
bossbar set hs-seacliff:camouflage11 style progress
bossbar set hs-seacliff:camouflage11 visible true
bossbar set hs-seacliff:camouflage11 max 50
bossbar add hs-seacliff:camouflage12 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage12 color red
bossbar set hs-seacliff:camouflage12 style progress
bossbar set hs-seacliff:camouflage12 visible true
bossbar set hs-seacliff:camouflage12 max 50
bossbar add hs-seacliff:camouflage13 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage13 color red
bossbar set hs-seacliff:camouflage13 style progress
bossbar set hs-seacliff:camouflage13 visible true
bossbar set hs-seacliff:camouflage13 max 50
bossbar add hs-seacliff:camouflage14 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage14 color red
bossbar set hs-seacliff:camouflage14 style progress
bossbar set hs-seacliff:camouflage14 visible true
bossbar set hs-seacliff:camouflage14 max 50
bossbar add hs-seacliff:camouflage15 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage15 color red
bossbar set hs-seacliff:camouflage15 style progress
bossbar set hs-seacliff:camouflage15 visible true
bossbar set hs-seacliff:camouflage15 max 50
bossbar add hs-seacliff:camouflage16 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage16 color red
bossbar set hs-seacliff:camouflage16 style progress
bossbar set hs-seacliff:camouflage16 visible true
bossbar set hs-seacliff:camouflage16 max 50
bossbar add hs-seacliff:camouflage17 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage17 color red
bossbar set hs-seacliff:camouflage17 style progress
bossbar set hs-seacliff:camouflage17 visible true
bossbar set hs-seacliff:camouflage17 max 50
bossbar add hs-seacliff:camouflage18 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage18 color red
bossbar set hs-seacliff:camouflage18 style progress
bossbar set hs-seacliff:camouflage18 visible true
bossbar set hs-seacliff:camouflage18 max 50
bossbar add hs-seacliff:camouflage19 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage19 color red
bossbar set hs-seacliff:camouflage19 style progress
bossbar set hs-seacliff:camouflage19 visible true
bossbar set hs-seacliff:camouflage19 max 50
bossbar add hs-seacliff:camouflage20 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage20 color red
bossbar set hs-seacliff:camouflage20 style progress
bossbar set hs-seacliff:camouflage20 visible true
bossbar set hs-seacliff:camouflage20 max 50
bossbar add hs-seacliff:camouflage21 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage21 color red
bossbar set hs-seacliff:camouflage21 style progress
bossbar set hs-seacliff:camouflage21 visible true
bossbar set hs-seacliff:camouflage21 max 50
bossbar add hs-seacliff:camouflage22 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage22 color red
bossbar set hs-seacliff:camouflage22 style progress
bossbar set hs-seacliff:camouflage22 visible true
bossbar set hs-seacliff:camouflage22 max 50
bossbar add hs-seacliff:camouflage23 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage23 color red
bossbar set hs-seacliff:camouflage23 style progress
bossbar set hs-seacliff:camouflage23 visible true
bossbar set hs-seacliff:camouflage23 max 50
bossbar add hs-seacliff:camouflage24 {"text": "Sneak to camoflauge"}
bossbar set hs-seacliff:camouflage24 color red
bossbar set hs-seacliff:camouflage24 style progress
bossbar set hs-seacliff:camouflage24 visible true
bossbar set hs-seacliff:camouflage24 max 50
#endregion
#region Lobby player count
bossbar add hs-seacliff:lobby {"text": "- more players needed!"}
bossbar set hs-seacliff:lobby visible true
bossbar set hs-seacliff:lobby max 12
bossbar set hs-seacliff:lobby style notched_12
bossbar set hs-seacliff:lobby color blue
#endregion
#region Game time
bossbar add hs-seacliff:game_length {"text": "Hide and Seek", "bold": true}
bossbar set hs-seacliff:game_length style notched_20
bossbar set hs-seacliff:game_length visible true
bossbar set hs-seacliff:game_length max 24000
#endregion
#endregion