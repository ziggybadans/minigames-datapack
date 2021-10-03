execute if score currentID pID-seacliff matches 0 run bossbar set hs-seacliff:lobby name {"text": "2 more players needed!"}
execute if score currentID pID-seacliff matches 1 run bossbar set hs-seacliff:lobby name {"text": "1 more player needed!"}

bossbar set hs-seacliff:lobby color blue