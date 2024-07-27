#> entity:mid/zombies/zombie_villager/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 12000.. run function entity:mid/zombies/zombie_villager/act/terribly_infection/_