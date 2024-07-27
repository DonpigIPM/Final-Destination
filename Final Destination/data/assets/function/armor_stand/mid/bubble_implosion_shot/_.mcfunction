#> assets:armor_stand/mid/bubble_implosion_shot/_

# tp
    scoreboard players add @s AITimer 1
    scoreboard players add @s RepeatTime 1
    tp @s ^ ^ ^0.6
    execute positioned ~-0.5 ~ ~-0.5 if entity @p[dx=0] run tag @s add Hitted
    execute unless block ~ ~ ~ #core:not_solid run tag @s add Hitted
    execute if entity @s[tag=Hitted] run function assets:armor_stand/mid/bubble_implosion_shot/hit
    playsound block.bubble_column.bubble_pop hostile @a ~ ~ ~ 1 0.5 0
    particle bubble ~ ~ ~ 0.2 0.2 0.2 0 8 force
    execute unless score @s RepeatTime matches 2.. run function assets:armor_stand/mid/bubble_implosion_shot/_
    scoreboard players reset @s RepeatTime

# kill
    kill @s[scores={AITimer=80..}]