#> assets:armor_stand/early/bubble_implosion_shot/_

# tp
    scoreboard players add @s AITimer 1
    tp @s ^ ^ ^0.6
    execute positioned ~-0.5 ~ ~-0.5 if entity @n[dx=0,type=!#minecraft:zombies] run tag @s add Hitted
    execute unless block ~ ~ ~ #core:not_solid run tag @s add Hitted
    execute if entity @s[tag=Hitted] run function assets:armor_stand/early/bubble_implosion_shot/hit
    playsound block.bubble_column.bubble_pop hostile @a ~ ~ ~ 1 0.5 0
    particle bubble ~ ~ ~ 0.2 0.2 0.2 0 8 force

# kill
    kill @s[scores={AITimer=80..}]