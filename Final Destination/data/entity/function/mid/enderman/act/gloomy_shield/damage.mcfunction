#> entity:mid/enderman/act/gloomy_shield/damage

#> damage
    tag @s add Attacker
    execute as @a[distance=..4] at @s run damage @s 20 minecraft:sonic_boom by @n[tag=Attacker]
    particle minecraft:witch ~ ~ ~ 4 4 4 0 8 force @a
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 0.5 1 0
    tag @s remove Attacker