#> entity:early/zombies/init

execute store result score #HelmetEquipped Temporary run data get entity @s ArmorItems[3].count
execute if entity @s[type=minecraft:husk] run scoreboard players set #HelmetEquipped Temporary 1
execute if score #HelmetEquipped Temporary matches 0 run item replace entity @s armor.head with leather_helmet
scoreboard players reset #HelmetEquipped Temporary

attribute @s generic.armor base set 4
attribute @s generic.max_health base set 30
data modify entity @s Health set value 30
effect give @s resistance infinite 0 true
attribute @s generic.movement_speed base set 0.35
attribute @s generic.safe_fall_distance base set 1024
attribute @s generic.attack_damage base set 5
attribute @s generic.movement_efficiency base set 1
attribute @s generic.water_movement_efficiency base set 1
attribute @s generic.step_height base set 1.7