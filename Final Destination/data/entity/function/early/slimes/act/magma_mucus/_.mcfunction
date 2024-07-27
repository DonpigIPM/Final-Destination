#> entity:early/slimes/act/magma_mucus/_

# act
    tag @s add Attacker
    execute as @e[type=!#entity:nether_mob,distance=..4] at @s run damage @s 10 minecraft:lava by @n[tag=Attacker]
    playsound minecraft:block.lava.pop hostile @a 1 0.7 0
    particle minecraft:lava ~ ~ ~ 2 2 2 0 128 force
    tag @s remove Attacker
    scoreboard players reset @s AITimer