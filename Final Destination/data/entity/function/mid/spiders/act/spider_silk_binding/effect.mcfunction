#> entity:mid/spiders/act/spider_silk_binding/effect

effect give @s minecraft:blindness 10 0 false
effect give @s minecraft:mining_fatigue 10 4 false
effect give @s minecraft:slowness 10 9 false

particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ 1.0 1.0 1.0 0 32 force @a
playsound minecraft:block.honey_block.break hostile @s ~ ~ ~ 1 0.5 1