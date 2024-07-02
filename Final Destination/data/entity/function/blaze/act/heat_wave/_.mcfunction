#> entity:blaze/act/heat_wave/_

# act
    tag @s add FD.Attacker
    execute positioned ~-2.5 ~1.0 ~-2.5 as @e[type=!#entity:nether_mob,dx=4,dy=0,dz=4] run damage @s 12 minecraft:in_fire by @n[tag=FD.Attacker]
    particle flame ~ ~1.0 ~ 2 0 2 0 40 force
    particle minecraft:ash ~ ~1.0 ~ 2 0 2 1 80 force
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.7 1
    tag @s remove FD.Attacker