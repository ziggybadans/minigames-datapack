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