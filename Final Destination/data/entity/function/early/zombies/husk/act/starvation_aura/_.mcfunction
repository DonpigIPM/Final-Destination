#> entity:early/zombies/husk/act/starvation_aura/_

# act
    tag @s add Attacker
    particle dust_color_transition{from_color:[0.39,0.21,0.21],scale:1,to_color:[0.63,0.54,0.09]} ~ ~ ~ 2 2 2 1 25 force
    playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 0.3 2 0
    playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2 0
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[dx=4,dy=4,dz=4,type=!#minecraft:zombies] run function entity:early/zombies/husk/act/starvation_aura/effect
    scoreboard players reset @s AITimer
    tag @s remove Attacker