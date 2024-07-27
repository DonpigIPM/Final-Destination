#> entity:early/skeletons/init

attribute @s generic.max_health base set 30

data modify entity @s Health set value 30
data modify entity @s CanPickUpLoot set value 0b

execute if predicate entity:has_enchantment_item run tag @s add Unswitchable