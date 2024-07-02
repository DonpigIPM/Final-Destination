#> entity:breeze/act/rapid_windshot/_

# shot
    tag @s add FD.Attacker
    summon armor_stand ~ ~1.0 ~ {"Tags":["FD.Motion"]}
    execute as @n[tag=FD.Motion] at @s run function entity:breeze/act/rapid_windshot/motion
    function entity:breeze/act/rapid_windshot/summon with storage entity:
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 1 1
    tag @s remove FD.Attacker
    data remove storage entity: Temp