#> core:main

# _ tick
    execute as @e[type=#core:mobs] at @s run function core:entity/_

# armor stand tick
    execute as @e[type=armor_stand,tag=FD.SpecialMob] at @s run function assets:armor_stand/_