execute if score currentID pID-seacliff matches 0 run bossbar set hs-seacliff:lobby name {"text": "6 more players needed!"}
execute if score currentID pID-seacliff matches 1 run bossbar set hs-seacliff:lobby name {"text": "5 more players needed!"}
execute if score currentID pID-seacliff matches 2 run bossbar set hs-seacliff:lobby name {"text": "4 more players needed!"}
execute if score currentID pID-seacliff matches 3 run bossbar set hs-seacliff:lobby name {"text": "3 more players needed!"}
execute if score currentID pID-seacliff matches 4 run bossbar set hs-seacliff:lobby name {"text": "2 more players needed!"}
execute if score currentID pID-seacliff matches 5 run bossbar set hs-seacliff:lobby name {"text": "1 more player needed!"}

bossbar set hs-seacliff:lobby color blue