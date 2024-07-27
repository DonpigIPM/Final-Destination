#> entity:early/enderman/init

attribute @s generic.max_health base set 80

data modify entity @s Health set value 80

execute store result score @s EFTEUsed run time query gametime
scoreboard players remove @s EFTEUsed 600