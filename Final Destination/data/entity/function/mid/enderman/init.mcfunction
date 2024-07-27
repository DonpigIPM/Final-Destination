#> entity:mid/enderman/init

item replace entity @s armor.feet with minecraft:ice[unbreakable={},enchantments={levels:{"minecraft:frost_walker":2}}] 1
data merge entity @s {ArmorDropChance:[0f,0f,0f,0f]}

attribute @s minecraft:generic.max_health base set 120
attribute @s minecraft:generic.attack_knockback base set 1.5
attribute @s minecraft:generic.movement_speed base set 0.5
attribute @s minecraft:generic.attack_damage base set 16
attribute @s minecraft:generic.burning_time base set 0.0

data modify entity @s Health set value 120

execute store result score @s EFTEUsed run time query gametime
scoreboard players remove @s EFTEUsed 600

function entity:mid/enderman/act/gloomy_shield/_