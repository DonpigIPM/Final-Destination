#> assets:armor_stand/early/bouncy_mucus/hit

# effect
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!minecraft:slime,dx=1] at @s run function assets:armor_stand/early/bouncy_mucus/effect
    particle dust{color:[0.0, 0.8, 0.5], scale:2.0} ~ ~ ~ 1 1 1 0 16 force
    playsound minecraft:entity.slime.jump hostile @a ~ ~ ~ 1 2 0

# kill
    kill @s