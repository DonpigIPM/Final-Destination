#> assets:armor_stand/early/bouncy_mucus/_

# kill timer
    execute if predicate entity:is_on_ground run scoreboard players add @s KillTimer 1
    execute if score @s KillTimer matches 60.. run kill @s

# sfx
    playsound block.honey_block.slide hostile @a ~ ~ ~ 1 1.7 0
    particle dust{color:[0.0, 0.8, 0.5], scale:2.0} ~ ~ ~ 0 0 0 0 1 force

# hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=!minecraft:slime,type=!minecraft:armor_stand,dx=1] positioned ~0.5 ~0.5 ~0.5 if entity @n[type=!minecraft:armor_stand,type=!minecraft:slime,dx=1] run tag @s add Hitted
    execute if entity @s[tag=Hitted] run function assets:armor_stand/early/bouncy_mucus/hit