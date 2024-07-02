#> assets:armor_stand/bubble_implosion_shot/hit

# hit
    tag @s add FD.Attacker
    execute as @e[type=#core:mobs,distance=..2] run damage @s 5 explosion by @n[tag=FD.Attacker]
    particle explosion ~ ~ ~ 0 0 0 2 1 force
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 2 1
    kill @s