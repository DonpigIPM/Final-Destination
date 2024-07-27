#> assets:armor_stand/mid/ender_eye_shot/_

# tp
    scoreboard players add @s AITimer 1
    scoreboard players add @s RepeatTime 1
    tp @s ^ ^ ^0.5
    execute positioned ~-0.5 ~ ~-0.5 run damage @p[dx=0] 16 minecraft:mob_attack by @s
    particle dust{color:[0.35, 0.06, 0.5], scale:2.0} ~ ~ ~ 0 0 0 0 1 force
    execute unless score @s RepeatTime matches 3.. run function assets:armor_stand/mid/ender_eye_shot/_

# kill
    kill @s[scores={AITimer=80..}]