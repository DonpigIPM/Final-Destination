#> entity:mid/warden/act/the_aura_of_doom/_

# aura
    tag @s add Attacker
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1 0
    particle minecraft:explosion ~ ~ ~ 0 0 0 16 4 force
    execute as @a[distance=..16] at @s run damage @s 100 minecraft:explosion by @n[tag=Attacker]
    tag @s remove Attacker