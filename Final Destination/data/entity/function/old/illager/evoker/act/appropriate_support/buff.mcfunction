#> function entity:early/illager/evoker/act/appropriate_support/buff

# buff
    effect give @s minecraft:strength infinite 5 false
    effect give @s minecraft:speed infinite 2 false
    effect give @s minecraft:resistance infinite 3 false
    effect give @s minecraft:absorption infinite 9 false
    effect give @s minecraft:jump_boost infinite 5 false
    
    attribute @s minecraft:generic.burning_time base set 0
    attribute @s minecraft:generic.explosion_knockback_resistance base set 1.0
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.attack_knockback base set 5.0
    attribute @s minecraft:generic.knockback_resistance base set 1.0
    attribute @s minecraft:generic.movement_efficiency base set 1.0
    attribute @s minecraft:generic.water_movement_efficiency base set 1.0
    attribute @s minecraft:generic.safe_fall_distance base set 1024.0

    playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.7 0
    particle minecraft:dust_pillar{block_state:{Name:"minecraft:lava",Properties:{level:"0"}}} ~ ~1.0 ~ 1 1 1 2 40 force

    tag @s add EvokerBuffed