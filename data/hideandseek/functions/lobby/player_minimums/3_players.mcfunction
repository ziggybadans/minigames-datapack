execute if score cID_hs-seacliff hs_playerID matches 0 run bossbar set hs-seacliff:lobby name {"text": "3 more players needed!"}
execute if score cID_hs-seacliff hs_playerID matches 1 run bossbar set hs-seacliff:lobby name {"text": "2 more players needed!"}
execute if score cID_hs-seacliff hs_playerID matches 2 run bossbar set hs-seacliff:lobby name {"text": "1 more player needed!"}

bossbar set hs-seacliff:lobby color blue