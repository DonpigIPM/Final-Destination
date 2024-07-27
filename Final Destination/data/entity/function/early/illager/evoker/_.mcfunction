#> entity:early/illager/evoker/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 100 run function entity:early/illager/evoker/act/merciless_fang/_
    execute if score @s AITimer matches 100.. run scoreboard players reset @s AITimer