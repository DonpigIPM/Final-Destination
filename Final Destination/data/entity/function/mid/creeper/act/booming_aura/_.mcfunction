#> entity:mid/creeper/booming_aura/_

# act
    tag @s add Attacker
    execute as @a[distance=..4] at @s run damage @s 40 minecraft:explosion by @n[tag=Attacker]
    particle minecraft:explosion ~ ~ ~ 0 0 0 4 4 force
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    tag @s remove Attacker