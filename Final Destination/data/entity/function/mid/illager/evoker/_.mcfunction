#> entity:mid/illager/evoker/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer AITimer = @s AITimer
    execute if score @s AITimer matches 1 run function entity:mid/illager/evoker/act/well_aimed_lightning/_
    scoreboard players operation #AITimer AITimer %= #60 Constant
    execute if score #AITimer AITimer matches 0 run function entity:mid/illager/evoker/act/merciless_fang/_
    execute if score @s AITimer matches 1200.. run scoreboard players reset @s AITimer