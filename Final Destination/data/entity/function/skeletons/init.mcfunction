#> entity:skeletons/init

execute store result score #HelmetEquipped Temporary run data get entity @s ArmorItems[3].Count
execute if score #HelmetEquipped Temporary matches 1.. run item replace entity @s armor.head with leather_helmet
scoreboard players reset #HelmetEquipped Temporary

effect give @s resistance infinite 1 true
effect give @s fire_resistance infinite 0 true
attribute @s generic.safe_fall_distance base set 1024