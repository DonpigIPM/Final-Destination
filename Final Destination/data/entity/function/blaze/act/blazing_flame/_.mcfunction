#> entity:blaze/act/blazing_flame/_

# shoot fireball
    tag @s add FD.Attacker
    execute positioned ^ ^1.2 ^0.5 summon minecraft:fireball run function entity:blaze/act/blazing_flame/fireball_init
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1 1
    tag @s remove FD.Attacker