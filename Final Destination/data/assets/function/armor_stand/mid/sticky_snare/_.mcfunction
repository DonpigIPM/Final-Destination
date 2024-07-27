#> assets:armor_stand/mid/sticky_snare/_

# kill
    scoreboard players add @s KillTimer 1
    execute if score @s KillTimer matches 600.. run kill @s

# set data
    execute if predicate entity:is_on_ground run function assets:armor_stand/mid/sticky_snare/set_data

# sfx
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 0.1 0.7 0
    particle dust_pillar{block_state:"minecraft:cobweb"} ~ ~ ~ 0 0 0 0 16 force

# boom
    execute if entity @s[tag=OnGround] positioned ~-0.5 ~ ~-0.5 if entity @p[dx=1] run function assets:armor_stand/mid/sticky_snare/boom

# Autokill
    execute if entity @s[tag=OnGround] if block ~ ~-0.1 ~ #core:not_solid run kill @s