#> entity:mid/warden/act/fear_of_death/_

# act
    playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 8.0 0.5 0
    execute as @a[distance=..128] at @s run function entity:mid/warden/act/fear_of_death/effect