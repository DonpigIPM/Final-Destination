#> entity:early/shulker/act/warped_reflection/_

# reflection
    tag @s add Attacker
    execute as @e[tag=!Attacker,distance=..4] at @s run damage @s 4 minecraft:thorns by @n[tag=Attacker]
    particle minecraft:explosion ~ ~ ~ 0 0 0 4 1 force
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.6 0
    tag @s remove Attacker