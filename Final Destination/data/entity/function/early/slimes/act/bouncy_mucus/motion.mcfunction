#> entity:early/slimes/act/bouncy_mucus/motion

# motion
    data merge entity @s {"Invisible":true,"Invulnerable":true,"Small":true,Tags:["Bouncy_Mucus","SpecialMob"]}
    execute facing entity @n[tag=MobTarget] feet positioned 0.0 0.5 0.0 run summon minecraft:armor_stand ^ ^ ^2.0 {"Tags":["Motion"]}
    data modify entity @s Motion set from entity @n[type=minecraft:armor_stand,tag=Motion] Pos
    kill @n[type=minecraft:armor_stand,tag=Motion]