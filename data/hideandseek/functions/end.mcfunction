# Clears inventory of all seekers
clear @a[team=seekers]

#region Bossbars
# Resets bossbars
bossbar set hs:camouflage1 players
bossbar set hs:camouflage2 players
bossbar set hs:camouflage3 players
bossbar set hs:camouflage4 players
bossbar set hs:camouflage5 players
bossbar set hs:camouflage6 players
bossbar set hs:camouflage7 players
bossbar set hs:camouflage8 players
bossbar set hs:camouflage9 players
bossbar set hs:camouflage10 players
bossbar set hs:camouflage11 players
bossbar set hs:camouflage12 players
bossbar set hs:camouflage13 players
bossbar set hs:camouflage14 players
bossbar set hs:camouflage15 players
bossbar set hs:camouflage16 players
bossbar set hs:camouflage17 players
bossbar set hs:camouflage18 players
bossbar set hs:camouflage19 players
bossbar set hs:camouflage20 players
bossbar set hs:camouflage21 players
bossbar set hs:camouflage22 players
bossbar set hs:camouflage23 players
bossbar set hs:camouflage24 players

# Changes game length bossbar
bossbar set hs:game_length color red
bossbar set hs:game_length name {"text": "Game ending!", "bold": true}
#endregion

# Starts a cooldown timer for the end of the game
execute unless score endtimer hs_timers matches 0 run scoreboard players remove endtimer hs_timers 1
# Once cooldown timer is over, fully ends and resets the game
execute if score endtimer hs_timers matches 0 run function hideandseek:reset