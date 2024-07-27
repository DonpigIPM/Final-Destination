#> entity:mid/warden/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #10 Constant
    execute if score #AITimer Temporary matches 0 run function entity:mid/warden/act/the_aura_of_doom/_
    execute if score @s AITimer matches 200 run function entity:mid/warden/act/fear_of_death/_
    execute if score @s AITimer matches 200.. run scoreboard players reset @s AITimer