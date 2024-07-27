#> entity:mid/skeletons/init

attribute @s minecraft:generic.max_health base set 45
attribute @s minecraft:generic.movement_speed base set 0.35

data modify entity @s Health set value 45
data modify entity @s CanPickUpLoot set value 0b

effect give @s minecraft:resistance infinite 0 true
effect give @s minecraft:strength infinite 4 true

execute unless predicate entity:has_helmet run item replace entity @s armor.head with minecraft:leather_helmet

execute if predicate entity:has_enchantment_item run tag @s add Unswitchable