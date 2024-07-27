#> assets:armor_stand/mid/weird_bullet/_

# hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] run tag @s add Victim
    execute if entity @p[tag=Victim] run function assets:armor_stand/mid/weird_bullet/hit

# sfx
    particle minecraft:dust{color:[0.929,0.961,0.518],scale:1} ~ ~ ~ 0 0 0 0 1 force @a

# tp
    #execute facing entity @p[tag=Targetable] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3
    execute facing entity @p[tag=Targetable] eyes run tp @s ^ ^ ^0.3
    #execute if block ~ ~ ~ #core:not_solid run tp @s ^ ^ ^0.3