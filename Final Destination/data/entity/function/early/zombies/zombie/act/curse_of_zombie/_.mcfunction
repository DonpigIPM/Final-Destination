#> entity:early/zombies/zombie/act/curse_of_zombie/_

# act
    tag @s add Attacker
    particle dust{color:[0.59,0.32,0.01],scale:4.0} ~ ~ ~ 2 2 2 0 10 force
    playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2 0
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[dx=4,dy=4,dz=4,type=!#minecraft:zombies] run function entity:early/zombies/zombie/act/curse_of_zombie/effect
    scoreboard players reset @s AITimer
    tag @s remove Attacker