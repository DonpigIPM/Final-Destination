#> entity:zombies/zombie_villager/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 2400.. run function entity:zombies/zombie_villager/act/terribly_infection/_