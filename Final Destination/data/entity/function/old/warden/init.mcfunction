#> entity:early/warden/init

attribute @s generic.armor base set 30
attribute @s generic.armor_toughness base set 20
attribute @s generic.max_absorption base set 2048
attribute @s generic.max_health base set 1024
attribute @s generic.attack_damage base set 2048
attribute @s generic.burning_time base set 0

effect give @s resistance infinite 3 true

data modify entity @s AbsorptionAmount set value 2048
data modify entity @s Health set value 1024