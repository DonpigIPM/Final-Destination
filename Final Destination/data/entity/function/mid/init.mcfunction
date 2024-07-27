#> entity:mid/init

# init
    execute if entity @s[type=minecraft:blaze] run function entity:mid/blaze/init
    execute if entity @s[type=minecraft:breeze] run function entity:mid/breeze/init
    execute if entity @s[type=minecraft:creeper] run function entity:mid/creeper/init
    execute if entity @s[type=minecraft:enderman] run function entity:mid/enderman/init
    execute if entity @s[type=#entity:illager] run function entity:mid/illager/init
    execute if entity @s[type=minecraft:iron_golem] run function entity:mid/iron_golem/init
    execute if entity @s[type=#minecraft:skeletons] run function entity:mid/skeletons/init
    execute if entity @s[type=minecraft:shulker] run function entity:mid/shulker/init
    execute if entity @s[type=#entity:slimes] run function entity:mid/slimes/init
    execute if entity @s[type=#entity:spiders] run function entity:mid/spiders/init
    execute if entity @s[type=minecraft:warden] run function entity:mid/warden/init
    execute if entity @s[type=#minecraft:zombies] run function entity:mid/zombies/init

# common
    attribute @s minecraft:generic.follow_range base set 2048
    attribute @s minecraft:generic.knockback_resistance base set 0.6
    attribute @s minecraft:generic.explosion_knockback_resistance base set 0.6
    attribute @s minecraft:generic.water_movement_efficiency base set 0.6
    attribute @s minecraft:generic.movement_efficiency base set 0.6

# health display
    function health_display:init

# finish
    tag @s add AlreadyInit