#> entity:early/zombies/zombified_piglin/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 100 run function entity:early/zombies/zombified_piglin/act/explosive_rage/_
    scoreboard players reset @s[scores={AITimer=200..}] AITimer