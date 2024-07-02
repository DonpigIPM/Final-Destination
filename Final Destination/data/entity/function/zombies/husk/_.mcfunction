#> entity:zombies/husk/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 10 run function entity:zombies/husk/act/starvation_aura/_