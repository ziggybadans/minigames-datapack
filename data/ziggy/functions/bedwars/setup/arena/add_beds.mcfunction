execute if block ~ ~ ~ red_bed if score coords arena_setup matches 2 run summon item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Fixed:true,Silent:true,Tags:[red]}
execute if score coords arena_setup matches 2 run scoreboard players set coords arena_setup 3
execute if block ~ ~ ~ yellow_bed if score coords arena_setup matches 3 run summon item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Fixed:true,Silent:true,Tags:[yellow]}
execute if score coords arena_setup matches 3 run scoreboard players set coords arena_setup 4
execute if block ~ ~ ~ green_bed if score coords arena_setup matches 4 run summon item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Fixed:true,Silent:true,Tags:[green]}
execute if score coords arena_setup matches 4 run scoreboard players set coords arena_setup 5
execute if block ~ ~ ~ blue_bed if score coords arena_setup matches 5 run summon item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Fixed:true,Silent:true,Tags:[blue]}
execute if score coords arena_setup matches 5 run scoreboard players set coords arena_setup 6