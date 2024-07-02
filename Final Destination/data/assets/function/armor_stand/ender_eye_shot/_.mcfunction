#> assets:armor_stand/ender_eye_shot/_

# tp
    scoreboard players add @s AITimer 1
    tp @s ^ ^ ^1.0
    execute positioned ~-0.5 ~ ~-0.5 run damage @n[dx=0] 4 minecraft:mob_attack by @s
    particle dust{color:[0.35, 0.06, 0.5], scale:2.0} ~ ~ ~ 0 0 0 0 1 force

# kill
    kill @s[scores={AITimer=80..}]