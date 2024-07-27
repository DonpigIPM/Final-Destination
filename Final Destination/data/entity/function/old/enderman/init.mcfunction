#> entity:early/enderman/init

item replace entity @s armor.feet with ice[unbreakable={},enchantments={levels:{"minecraft:frost_walker":2}}] 1
data merge entity @s {ArmorDropChance:[0f,0f,0f,0f]}

effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 1 true
effect give @s absorption infinite 4 true

attribute @s generic.armor base set 10
attribute @s generic.attack_damage base set 12
attribute @s generic.attack_knockback base set 5
attribute @s generic.burning_time base set 0
attribute @s generic.explosion_knockback_resistance base set 1
attribute @s generic.knockback_resistance base set 1
attribute @s generic.movement_efficiency base set 1
attribute @s generic.water_movement_efficiency base set 1
attribute @s generic.safe_fall_distance base set 1024
attribute @s generic.max_health base set 50
attribute @s generic.step_height base set 2.6

data modify entity @s Health set value 50

execute store result score @s EFTEUsed run time query gametime
scoreboard players remove @s EFTEUsed 300