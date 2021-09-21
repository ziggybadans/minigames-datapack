execute if score currentID playerID matches 0 run bossbar set hs:lobby name {"text": "- more players needed"}
execute if score currentID playerID matches 1 run bossbar set hs:lobby name {"text": "3 more players needed"}
execute if score currentID playerID matches 2 run bossbar set hs:lobby name {"text": "2 more players needed"}
execute if score currentID playerID matches 3 run bossbar set hs:lobby name {"text": "1 more player needed"}
bossbar set hs:lobby color blue