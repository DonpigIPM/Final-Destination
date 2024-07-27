#> entity:early/blaze/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #40 Constant
    execute if score #AITimer Temporary matches 0 unless score @s AITimer matches 200 run function entity:early/blaze/act/blazing_flame/_