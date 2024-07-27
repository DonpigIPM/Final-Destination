#> entity:mid/spiders/_

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 40 if entity @s[type=minecraft:spider] run function entity:mid/spiders/act/spider_silk_binding/_
    execute if score @s AITimer matches 40 if entity @s[type=minecraft:cave_spider] run function entity:mid/spiders/act/venom_splash/_
    execute if score @s AITimer matches 100 run function entity:mid/spiders/act/sticky_snare/_
    execute if score @s AITimer matches 100.. run scoreboard players reset @s AITimer