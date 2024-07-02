#> entity:zombies/zombie/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 80 run function entity:zombies/zombie/act/curse_of_zombie/_