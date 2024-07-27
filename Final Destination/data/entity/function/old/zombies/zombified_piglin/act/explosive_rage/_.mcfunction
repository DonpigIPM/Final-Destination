#> entity:early/zombies/zombified_piglin/act/explosive_rage/_

# act
    effect give @n[tag=MobTarget] blindness 1 0 false
    damage @n[tag=MobTarget] 1 minecraft:sonic_boom by @s
    effect give @s strength 2 4 false
    playsound entity.hoglin.converted_to_zombified hostile @a ~ ~ ~ 1 0.5 0
    particle angry_villager ~ ~1.8 ~ 0 0 0 0 1 force