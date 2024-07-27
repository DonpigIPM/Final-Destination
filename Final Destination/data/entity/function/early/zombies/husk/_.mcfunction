#> entity:early/zombies/husk/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 100 run function entity:early/zombies/husk/act/starvation_aura/_