#> entity:early/illager/evoker/act/booming_smash/_

# shot
    tag @s add Attacker
    summon armor_stand ~ ~1.0 ~ {"Tags":["Motion"]}
    execute as @n[tag=Motion] at @s run function entity:early/illager/evoker/act/booming_smash/motion
    function entity:early/illager/evoker/act/booming_smash/summon with storage entity:early/
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 1 0
    tag @s remove Attacker
    data remove storage entity:early/ Temp
    scoreboard players add @s BoomingSmashCooltime 100