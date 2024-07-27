#> entity:mid/zombies/zombie/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 200 run function entity:mid/zombies/zombie/act/curse_of_zombie/_