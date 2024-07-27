#> entity:mid/slimes/_

# AITimer
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #80 Constant
    execute if score #AITimer Temporary matches 0 if entity @s[type=minecraft:slime] run function entity:mid/slimes/act/bouncy_mucus/_
    execute if score #AITimer Temporary matches 0 if entity @s[type=minecraft:magma_cube] run function entity:mid/slimes/act/magma_mucus/_

# swelling
    execute if score @s AITimer matches 200 run function entity:mid/slimes/act/swelling/_
# reset
    execute if score @s AITimer matches 200.. run scoreboard players reset @s AITimer