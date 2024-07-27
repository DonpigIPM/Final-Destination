#> entity:early/blaze/act/heat_wave/_

# act
    tag @s add Attacker
    execute positioned ~-2.5 ~0.5 ~-2.5 as @a[dx=4,dz=4] run damage @s 20 minecraft:in_fire by @n[tag=Attacker]
    particle minecraft:flame ~ ~0.5 ~ 2 0 2 0 40 force
    particle minecraft:ash ~ ~0.5 ~ 2 0 2 1 80 force
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.7 0
    tag @s remove Attacker