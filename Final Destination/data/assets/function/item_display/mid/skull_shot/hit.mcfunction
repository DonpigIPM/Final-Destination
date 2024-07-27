#>  assets:item_display/mid/skull_shot/hit

# blast
    tag @s add Attacker
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @a[dx=4,dy=4,dz=4] at @s run function assets:item_display/mid/skull_shot/effect
    kill @s