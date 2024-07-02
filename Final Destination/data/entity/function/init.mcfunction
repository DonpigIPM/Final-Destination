#> entity:init

# init
    execute if entity @s[type=minecraft:blaze] run function entity:blaze/init
    execute if entity @s[type=minecraft:breeze] run function entity:breeze/init
    execute if entity @s[type=minecraft:creeper] run function entity:creeper/init
    execute if entity @s[type=minecraft:enderman] run function entity:enderman/init
    execute if entity @s[type=#entity:illager] run function entity:illager/init
    execute if entity @s[type=#minecraft:skeletons] run function entity:skeletons/init
    execute if entity @s[type=minecraft:shulker] run function entity:shulker/init
    execute if entity @s[type=#entity:slimes] run function entity:slimes/init
    execute if entity @s[type=#entity:spiders] run function entity:spiders/init
    execute if entity @s[type=minecraft:warden] run function entity:warden/init
    execute if entity @s[type=#minecraft:zombies] run function entity:zombies/init

# common
    attribute @s generic.follow_range base set 2048

# finish
    tag @s add FD.AlreadyInit