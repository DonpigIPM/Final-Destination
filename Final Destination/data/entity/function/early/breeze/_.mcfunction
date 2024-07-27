#> entity:early/breeze/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    execute if score @s AITimer matches 0..99 run scoreboard players operation #AITimer Temporary %= #40 Constant
    execute if score @s AITimer matches 100..199 run scoreboard players operation #AITimer Temporary %= #20 Constant
    execute if score #AITimer Temporary matches 0 unless score @s AITimer matches 200 run function entity:early/breeze/act/rapid_windshot/_
    execute if score @s AITimer matches 200.. run scoreboard players reset @s AITimer