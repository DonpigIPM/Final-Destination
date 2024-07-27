#> entity:mid/blaze/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #30 Constant
    execute if score #AITimer Temporary matches 0 unless score @s AITimer matches 200 run function entity:mid/blaze/act/blazing_flame/_
    execute if score @s AITimer matches 100 run function entity:mid/blaze/act/heat_wave/_
    scoreboard players reset @s[scores={AITimer=200..}] AITimer