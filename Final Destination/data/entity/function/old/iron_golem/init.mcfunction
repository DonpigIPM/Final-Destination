#> entity:early/iron_golem/init

attribute @s minecraft:generic.movement_speed base set 0.5
attribute @s minecraft:generic.armor base set 20
attribute @s minecraft:generic.max_health base set 300
attribute @s minecraft:generic.knockback_resistance base set 1.0
attribute @s minecraft:generic.explosion_knockback_resistance base set 1.0
attribute @s minecraft:generic.attack_knockback base set 5.0

data modify entity @s Health set value 300

effect give @s minecraft:strength infinite 5 true

tag @s add Targetable