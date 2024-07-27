#> core:main

# player tick
    execute if entity @a as @a at @s run function player:_

# _ tick
    execute if entity @e[type=#core:mobs] if score #GameProgress GameProgress matches 1 as @e[type=#core:mobs] at @s run function core:entity/early
    execute if entity @e[type=#core:mobs] if score #GameProgress GameProgress matches 2 as @e[type=#core:mobs] at @s run function core:entity/mid
    #execute as @e[type=#core:mobs] at @s if score #GameProgress GameProgress matches 3 run function core:entity/late
    #execute as @e[type=#core:mobs] at @s if score #GameProgress GameProgress matches 4 run function core:entity/end

# armor stand tick
    execute if entity @e[type=minecraft:armor_stand,tag=SpecialMob] if score #GameProgress GameProgress matches 1 as @e[type=minecraft:armor_stand,tag=SpecialMob] at @s run function assets:armor_stand/early/_
    execute if entity @e[type=minecraft:armor_stand,tag=SpecialMob] if score #GameProgress GameProgress matches 2 as @e[type=minecraft:armor_stand,tag=SpecialMob] at @s run function assets:armor_stand/mid/_

# display tick
    execute if entity @e[type=minecraft:item_display,tag=SpecialMob] if score #GameProgress GameProgress matches 2 as @e[type=minecraft:item_display,tag=SpecialMob] at @s run function assets:item_display/mid/_