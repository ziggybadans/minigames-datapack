tellraw @s {"text": "Configuring pack...", "color": "red", "bold": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding installation tracker", "italic": true}
# Adds boolean for 'if datapack is instaled'
scoreboard objectives add setup dummy
scoreboard players set installed setup 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding bed tracker", "italic": true}
# Adds bed and death trackers
scoreboard objectives add bd dummy "Bed Destroyed"
execute if score debugging settings matches 1 run tellraw @s {"text": "Adding death tracker", "italic": true}
scoreboard objectives add dead deathCount "Dead"
scoreboard players add red_bed bd 0
scoreboard players add yellow_bed bd 0
scoreboard players add green_bed bd 0
scoreboard players add blue_bed bd 0

execute if score debugging settings matches 1 run tellraw @s {"text": "Adding teams", "italic": true}
#Adds teams and properties
team add red "Red"
team add yellow "Yellow"
team add green "Green"
team add blue "Blue"

execute if score debugging settings matches 1 run tellraw @s {"text": "Configuring teams", "italic": true}
team modify red color red
team modify red collisionRule pushOtherTeams
team modify red friendlyFire false

team modify yellow color yellow
team modify yellow collisionRule pushOtherTeams
team modify yellow friendlyFire false

team modify green color green
team modify green collisionRule pushOtherTeams
team modify green friendlyFire false

team modify blue color blue
team modify blue collisionRule pushOtherTeams
team modify blue friendlyFire false

execute store success score bedsplaced setup run setblock 0 65 0 red_bed[part=head] keep
execute if score debugging settings matches 1 if score bedsplaced setup matches 1 run tellraw @s {"text": "Placing beds...", "italic": true}
execute if score bedsplaced setup matches 1 run function ziggy:run/reset
execute if score debugging settings matches 1 if score bedsplaced setup matches 0 run tellraw @s {"text": "Beds are already placed!", "italic": true}

execute if score debugging settings matches 1 run tellraw @s {"text": "Setting 'installed' to true", "italic": true}
scoreboard players set installed setup 1

tellraw @s {"text": "Done!", "color": "green"}