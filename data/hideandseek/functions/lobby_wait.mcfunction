tellraw @s {"text": "Joining...","italic": true}
# A buffer for the lobby joining system
execute if score lobby_cooldown hs_timers matches 10 run function hideandseek:lobby_join