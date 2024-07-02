#> entity:breeze/act/wind_burst/act

# act
    tag @s add FD.Attacker
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 0.5 1
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 1
    execute positioned ~-2.5 ~-2.5 ~-2.5 run execute as @e[type=!#entity:wind_burst_exception,dx=5,dy=5,dz=5] run damage @s 10 wind_charge by @n[tag=FD.Attacker]
    summon minecraft:armor_stand ~ ~ ~ {Tags:["FD.WindBoom","FD.SpecialMob"],Invisible:true,Invulnerable:true,Small:true,Silent:true}
    effect give @s wind_charged 10 2 true

# reset
    tag @s remove FD.WindBurstReady
    tag @s remove FD.Attacker
    scoreboard players reset @s AITimer