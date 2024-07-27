#> entity:early/illager/evoker/act/appropriate_support/_

# act
    particle minecraft:witch ~ ~ ~ 8 8 8 2 100 force
    playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 1.6 0
    execute as @e[type=#minecraft:raiders,distance=..32,tag=!EvokerBuffed] at @s run function entity:early/illager/evoker/act/appropriate_support/buff