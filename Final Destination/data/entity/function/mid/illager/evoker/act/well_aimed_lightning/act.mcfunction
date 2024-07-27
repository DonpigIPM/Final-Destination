#> entity:mid/illager/evoker/act/well_aimed_lightning/act

# act
    summon minecraft:lightning_bolt
    summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:levitation",amplifier:127,duration:2}]}}

    effect give @s minecraft:blindness 10 0 false
    effect give @s minecraft:mining_fatigue 1 255 false
    effect give @s minecraft:slowness 5 4 false
    effect clear @s minecraft:absorption
    effect clear @s minecraft:haste
    effect clear @s minecraft:jump_boost
    effect clear @s minecraft:speed
    effect clear @s minecraft:strength
    effect clear @s minecraft:regeneration

    playsound minecraft:entity.mooshroom.convert hostile @a ~ ~ ~ 1 1.6 0
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 2 0

    particle minecraft:angry_villager ~ ~ ~ 2 2 2 0 50 force @a