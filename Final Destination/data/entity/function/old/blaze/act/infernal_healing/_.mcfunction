#> entity:early/blaze/act/infernal_healing/_

# healing
    effect give @s instant_health 1 0 false
    effect give @s strength 10 1 false
    damage @n[tag=MobTarget,distance=..2.2] 4 fireball by @s
    particle minecraft:flame ~ ~ ~ 1 1 1 1.6 32 force
    particle heart ~ ~1.8 ~ 0 0 0 0 1 force
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5 0