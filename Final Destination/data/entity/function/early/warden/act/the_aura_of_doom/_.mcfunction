#> entity:early/warden/act/the_aura_of_doom/_

# aura
    tag @s add Attacker
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1 0
    particle minecraft:explosion ~ ~ ~ 0 0 0 8 1 force
    execute as @e[distance=..8] at @s run damage @s 40 minecraft:explosion by @n[tag=Attacker]
    tag @s remove Attacker
    scoreboard players reset @s AITimer