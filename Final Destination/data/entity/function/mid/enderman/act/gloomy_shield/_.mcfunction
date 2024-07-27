#> entity:mid/enderman/act/gloomy_shield/_

#> make shield
    tag @s add UsingGloomyShield
    effect give @s minecraft:absorption infinite 14 true
    scoreboard players add @s GloomyShieldUsed 1

#> sfx
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 2 0
    particle minecraft:witch ~ ~ ~ 2 3 2 2 64 force