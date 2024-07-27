#> entity:early/blaze/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #30 Constant
    execute if score #AITimer Temporary matches 0 unless score @s AITimer matches 200 run function entity:early/blaze/act/blazing_flame/_
    execute if score @s AITimer matches 140 run function entity:early/blaze/act/heat_wave/_
    execute if score @s AITimer matches 200 run function entity:early/blaze/act/infernal_healing/_
    execute if score @s AITimer matches 239.. run scoreboard players reset @s AITimer