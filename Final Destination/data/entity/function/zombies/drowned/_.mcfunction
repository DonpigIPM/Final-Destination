#> entity:zombies/drowned/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 100.. run function entity:zombies/drowned/act/bubble_implosion/_