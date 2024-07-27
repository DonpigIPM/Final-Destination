#> assets:item_display/mid/bone_blade/_

# act
    scoreboard players add @s KillTimer 1
    tag @s add Attacker
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 10 minecraft:stalagmite by @n[tag=Attacker]
    tag @s remove Attacker
    particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a
    tp @s ^ ^ ^1.0
    execute unless block ~ ~ ~ #core:not_solid run kill @s
    execute if score @s AITimer matches 100.. run kill @s