tellraw @s {"text": "Joining...","italic": true}
execute if score lobby_cooldown hs_timers matches 10 run function hideandseek:lobby_join