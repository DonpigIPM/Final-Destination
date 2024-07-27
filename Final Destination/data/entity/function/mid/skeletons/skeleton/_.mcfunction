#> entity:mid/skeletons/skeleton/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 60 run function entity:mid/skeletons/act/bone_blade/_
    scoreboard players reset @s[scores={AITimer=60..}] AITimer