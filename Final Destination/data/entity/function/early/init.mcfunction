#> entity:early/init

# init
    execute if entity @s[type=minecraft:blaze] run function entity:early/blaze/init
    execute if entity @s[type=minecraft:breeze] run function entity:early/breeze/init
    execute if entity @s[type=minecraft:creeper] run function entity:early/creeper/init
    execute if entity @s[type=minecraft:enderman] run function entity:early/enderman/init
    execute if entity @s[type=#entity:illager] run function entity:early/illager/init
    execute if entity @s[type=minecraft:iron_golem] run function entity:early/iron_golem/init
    execute if entity @s[type=#minecraft:skeletons] run function entity:early/skeletons/init
    execute if entity @s[type=minecraft:shulker] run function entity:early/shulker/init
    execute if entity @s[type=#entity:slimes] run function entity:early/slimes/init
    execute if entity @s[type=#entity:spiders] run function entity:early/spiders/init
    execute if entity @s[type=minecraft:warden] run function entity:early/warden/init
    execute if entity @s[type=#minecraft:zombies] run function entity:early/zombies/init

# common
    attribute @s generic.follow_range base set 2048

# health display
    function health_display:init

# finish
    tag @s add AlreadyInit