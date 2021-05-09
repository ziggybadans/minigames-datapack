execute unless score installed setup matches 0 run tellraw @s {"text": "Datapack already set up!", "italic": true}
execute if score installed setup matches 0 run function ziggy:setup/init