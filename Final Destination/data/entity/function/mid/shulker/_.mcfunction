#> entity:mid/shulker/_

# warped reflection
    execute if entity @s[nbt={HurtTime:9s}] run function entity:mid/shulker/act/warped_reflection/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 1 run function entity:mid/shulker/act/weird_bullet_shot/_
    scoreboard players reset @s[scores={AITimer=40..}] AITimer