#> assets:armor_stand/mid/bubble_implosion_shot/hit

# hit
    tag @s add Attacker
    execute as @a[distance=..2] run damage @s 15 explosion by @n[tag=Attacker]
    particle explosion ~ ~ ~ 0 0 0 2 1 force
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 2 0
    kill @s