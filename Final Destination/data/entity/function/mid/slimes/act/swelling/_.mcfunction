#> entity:mid/slimes/act/swelling/_

# act
    execute store result score #Size Temporary run data get entity @s Size
    execute if score #Size Temporary matches ..3 run scoreboard players add #Size Temporary 1
    execute store result entity @s Size int 1.0 run scoreboard players get #Size Temporary
    scoreboard players reset #Size Temporary

# sfx
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 2 force @a
    particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~ ~ 2.0 2.0 2.0 1.6 128 force @a
    playsound minecraft:entity.slime.squish hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:block.slime_block.break hostile @a ~ ~ ~ 1 1.6 0