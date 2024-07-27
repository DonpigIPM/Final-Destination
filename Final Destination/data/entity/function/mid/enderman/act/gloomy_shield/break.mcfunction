#> entity:mid/enderman/act/gloomy_shield/break

#> destraction effects
    particle minecraft:block{block_state:"minecraft:purple_stained_glass"} ~ ~ ~ 1 3 1 1 64 force @a
    playsound minecraft:block.glass.break hostile @a 1 0.5 0
    playsound minecraft:block.beacon.deactivate hostile @a 1 0.5 0
    playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ 0.7 0.7 0

#> damage
    tag @s add Attacker
    execute as @a[distance=..4] at @s run damage @s 10 minecraft:explosion by @n[tag=Attacker]
    tag @s remove Attacker

#> reset
    tag @s remove UsingGloomyShield