execute if score coords arena_setup matches 5 unless block ~ ~ ~ #beds run function ziggy:setup/arena/create_arena
execute if score coords arena_setup >= bed_setup arena_setup if block ~ ~ ~ #beds run function ziggy:setup/arena/add_beds
execute if score coords arena_setup matches 0 run function ziggy:setup/arena/add_center
#0=not set up, 1=centre added, 2=radius added; BEDS: 3=red, 4=yellow, 5=green, 6=blue