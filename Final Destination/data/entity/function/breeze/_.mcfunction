#> entity:breeze/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    execute if score @s AITimer matches 0..99 run scoreboard players operation #AITimer Temporary %= #20 Constant
    execute if score @s AITimer matches 100..199 run scoreboard players operation #AITimer Temporary %= #5 Constant
    execute if score #AITimer Temporary matches 0 unless score @s AITimer matches 200 run function entity:breeze/act/rapid_windshot/_
    execute if score @s AITimer matches 100 run function entity:breeze/act/wind_burst/_
    execute if score @s AITimer matches 200.. if predicate entity:is_on_ground if entity @s[tag=FD.WindBurstReady] run function entity:breeze/act/wind_burst/act