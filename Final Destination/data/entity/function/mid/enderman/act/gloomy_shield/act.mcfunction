#> entity:mid/enderman/act/gloomy_shield/act

# damage
    function entity:mid/enderman/act/gloomy_shield/damage

# debuff
    effect give @s minecraft:slowness 1 2 true

# sfx
    particle minecraft:dust_color_transition{from_color:[0.498,0.051,0.659],scale:1,to_color:[0.910,0.820,1.000]} ~ ~ ~ 1 3 1 0 4 force
    playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 1 0.5 0

# break
    execute store result score #ShieldAmount Temporary run data get entity @s AbsorptionAmount
    execute unless score #ShieldAmount Temporary matches 1.. run function entity:mid/enderman/act/gloomy_shield/break
    scoreboard players reset #ShieldAmount Temporary