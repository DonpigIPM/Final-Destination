#> entity:early/blaze/act/blazing_flame/_

# shoot fireball
    tag @s add Attacker
    execute positioned ^ ^1.2 ^0.5 summon minecraft:fireball run function entity:early/blaze/act/blazing_flame/fireball_init
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1 0
    tag @s remove Attacker