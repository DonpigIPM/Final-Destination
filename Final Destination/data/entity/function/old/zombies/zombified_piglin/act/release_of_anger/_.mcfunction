#> entity:early/zombies/zombified_piglin/act/release_of_anger/_

# act
    tag @s add Attacker
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#entity:zombified_piglin_targets,dx=4,dy=4,dz=4] run damage @s 12 explosion by @n[tag=Attacker]
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    tag @s remove Attacker