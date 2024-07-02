#> entity:zombies/zombie_villager/act/terribly_infection/_

# act
    tag @s add FD.Attacker
    effect give @s slowness 4 4 false
    execute as @e[type=villager,distance=..2] run damage @s 2147483647 mob_attack by @n[tag=FD.Attacker]
    execute as @e[type=!villager,type=!#minecraft:zombies,distance=..2] run damage @s 10 mob_attack by @n[tag=FD.Attacker]
    particle dust_color_transition{from_color:[0.75,0.56,0.05],scale:4,to_color:[0.01,0.76,0.00]} ~ ~1 ~ 2 2 2 1 100 force
    playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 1 0.7 1
    playsound entity.zombie_horse.death hostile @a ~ ~ ~ 1 1.6 1
    tag @s remove FD.Attacker
    scoreboard players reset @s AITimer