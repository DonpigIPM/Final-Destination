#> entity:blaze/act/blazing_flame/fireball_init

# set data
    tp @s ~ ~ ~ facing entity @n[tag=FD.MobTarget]
    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1.0 {Tags:["FD.FireballMotion"],Marker:1b,Invisible:1b}
    data modify entity @s Motion set from entity @n[type=minecraft:armor_stand,tag=FD.FireballMotion] Pos
    data modify entity @s power set from entity @n[type=minecraft:armor_stand,tag=FD.FireballMotion] Pos
    kill @n[tag=FD.FireballMotion]
    data modify entity @s Owner set from entity @n[tag=FD.Attacker] UUID
    tag @s add FD.AutoKill1m