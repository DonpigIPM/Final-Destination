#> entity:mid/spiders/act/spider_silk_binding/_

# act
    particle minecraft:dust{color:[0.961,1.000,0.984],scale:4.0} ~ ~ ~ 8.0 8.0 8.0 3.2 128 force @a
    playsound minecraft:entity.spider.hurt hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1 0.5 0
    execute as @a[distance=..8] at @s run function entity:mid/spiders/act/spider_silk_binding/effect