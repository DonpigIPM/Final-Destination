#> entity:mid/shulker/act/warped_reflection/_

# reflection
    tag @s add Attacker
    execute as @a[distance=..4] at @s run damage @s 16 minecraft:thorns by @n[tag=Attacker]
    particle minecraft:explosion ~ ~ ~ 0 0 0 4 1 force
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.6 0
    tag @s remove Attacker