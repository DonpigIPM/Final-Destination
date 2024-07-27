#> entity:mid/zombies/init

attribute @s minecraft:generic.max_health base set 50.0
attribute @s minecraft:zombie.spawn_reinforcements base set 1.0
attribute @s minecraft:generic.movement_efficiency base set 1.0
attribute @s minecraft:generic.water_movement_efficiency base set 1.0
attribute @s minecraft:generic.oxygen_bonus base set 1024.0

execute if data entity @s {IsBaby:0b} run attribute @s minecraft:generic.movement_speed base set 0.35

data merge entity @s {ArmorItems:[{id:"minecraft:rotten_flesh",count:1,components:{"minecraft:enchantments":{levels:{"entity:midzombies":1}}}},{},{},{}]}

data modify entity @s Health set value 50.0f