#> entity:mid/enderman/_

# act
    function entity:mid/enderman/act/eye_from_the_end/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 20 run function entity:mid/enderman/act/gloomy_shield/_