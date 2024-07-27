#> entity:mid/skeletons/wither_skeleton/_

#> AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 40 run function entity:mid/skeletons/act/skull_shot/_
    scoreboard players reset @s[scores={AITimer=40..}] AITimer