#> entity:mid/blaze/act/blazing_flame/fireball_init

# set data
    tp @s ~ ~ ~ facing entity @n[tag=MobTarget]
    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["FireballMotion"],Marker:1b,Invisible:1b}
    data modify entity @s Motion set from entity @n[type=minecraft:armor_stand,tag=FireballMotion] Pos
    data modify entity @s power set from entity @n[type=minecraft:armor_stand,tag=FireballMotion] Pos
    kill @n[tag=FireballMotion]
    data modify entity @s Owner set from entity @n[tag=Attacker] UUID
    tag @s add AutoKill1m