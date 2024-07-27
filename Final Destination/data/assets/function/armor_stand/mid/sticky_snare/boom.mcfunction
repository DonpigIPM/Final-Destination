#> assets:armor_stand/mid/sticky_snare/boom

# effect
    tag @s add Attacker
    execute as @a[distance=..4] at @s run function assets:armor_stand/mid/sticky_snare/effect

# sfx
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    playsound minecraft:block.slime_block.break hostile @a ~ ~ ~ 1 0.5 0
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

# kill
    kill @s