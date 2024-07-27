#> entity:mid/zombies/drowned/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #40 Constant
    execute if score #AITimer Temporary matches 0 run function entity:mid/zombies/drowned/act/bubble_implosion/_
    execute if score @s AITimer matches 200.. run scoreboard players reset @s AITimer