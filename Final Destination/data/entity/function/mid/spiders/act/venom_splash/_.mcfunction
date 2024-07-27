#> entity:mid/spiders/act/venom_splash/_

# act
    particle minecraft:dust{color:[0.055,0.600,0.125],scale:4.0} ~ ~ ~ 8.0 8.0 8.0 3.2 128 force @a
    playsound minecraft:entity.spider.hurt hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:block.brewing_stand.brew hostile @a ~ ~ ~ 1 0.7 0
    execute as @a[distance=..8] at @s run function entity:mid/spiders/act/venom_splash/effect