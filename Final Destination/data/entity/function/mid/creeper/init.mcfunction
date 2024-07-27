#> entity:mid/creeper/init

attribute @s minecraft:generic.max_health base set 45
attribute @s minecraft:generic.movement_speed base set 0.35

item replace entity @s armor.head with minecraft:gunpowder[enchantments={levels:{"entity:invisible":1}}] 1

data modify entity @s Health set value 45