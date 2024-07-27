#> entity:early/slimes/_

# AITimer
    scoreboard players add @s AITimer 1
    execute if score @s[type=minecraft:slime] AITimer matches 200 run function entity:early/slimes/act/bouncy_mucus/_
    execute if score @s[type=minecraft:magma_cube] AITimer matches 200 run function entity:early/slimes/act/magma_mucus/_