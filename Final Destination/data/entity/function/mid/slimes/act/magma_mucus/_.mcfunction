#> entity:mid/slimes/act/magma_mucus/_

# act
    tag @s add Attacker
    execute as @a[distance=..6] at @s run damage @s 30 minecraft:lava by @n[tag=Attacker]
    playsound minecraft:block.lava.pop hostile @a 1 0.7 0
    particle minecraft:lava ~ ~ ~ 4 4 4 0 128 force
    tag @s remove Attacker