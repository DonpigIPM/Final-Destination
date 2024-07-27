#> entity:early/zombies/zombie/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 200 run function entity:early/zombies/zombie/act/curse_of_zombie/_