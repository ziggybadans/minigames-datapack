## Declarations
#declare dimension hs-seacliff
#declare tag hs-seacliff
#declare tag hide_seek Similar to the team hide_seek, but for ease of use with mobs

## Blocks
#define objective hs_block Tracks the block a hider has selected
scoreboard objectives add hs_block trigger "Hide&Seek Block"

#> playerID
# Tracks the amount of players in a game and manages if a player leaves 
#define objective hs_playerID
scoreboard objectives add hs_playerID dummy "playerIDs"

#define score_holder nID_hs-seacliff The next available ID that a player can join with
scoreboard players set nID_hs-seacliff hs_playerID 1
#define score_holder cID_hs-seacliff The count of all players based on the last player joined
scoreboard players set cID_hs-seacliff hs_playerID 0
#define score_holder cIDtrue_hs-seacliff The true count of all players
scoreboard players set cIDtrue_hs-seacliff hs_playerID 0
scoreboard players operation #base settings = #base hs_playerID
#scoreboard players set currentIDtrue playerID 0

#define score_holder hc-seacliff The amount of hiders in a game
scoreboard players set hc-seacliff hs_playerID 0
#define score_holder sc-seacliff The amount of seekers in a game
scoreboard players set sc-seacliff hs_playerID 0

## Timers
#define objective hs_timers Timers for Hide&Seek Seacliff map | gc = game_countdown, gl = game_length, ec = end_cooldown, hw = hider_warning, ir = item_rotation
scoreboard objectives add hs_timers dummy "Hide&Seek Timers | Seacliff"
#define score_holder gc-seacliff Timer for game to start once #base is achieved
scoreboard players operation gc-seacliff hs_timers = game_countdown settings
#define score_holder gl-seacliff Length of Hide&Seek game
scoreboard players operation gl-seacliff hs_timers = game_length settings
#define score_holder ec-seacliff Waiting period in-between game ending and the end function running
scoreboard players set ec-seacliff hs_timers 300
#define score_holder hider_warning Visible warning when a seeker is within 15 blocks
scoreboard players set hider_warning hs_timers 0
#define score_holder item_rotation Interval for rotating between blocks in the seeker's hotbar
scoreboard players set item_rotation hs_timers 0
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
#define objective seeker_queue A queue for players to join for seeker, randomly chosen from
scoreboard objectives add seeker_queue dummy "Seeker Queue | Seacliff"
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
#define bossbar hs-seacliff:lobby Bossbar for Seacliff lobby player count
#define bossbar hs-seacliff:game_length Bossbar for Seacliff game time
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