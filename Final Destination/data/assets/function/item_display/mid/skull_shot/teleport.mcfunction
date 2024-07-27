#> assets:item_display/mid/skull_shot/teleport

    scoreboard players add @s RepeatTime 1
    tag @s add Attacker
    execute positioned ~-0.15625 ~-0.15625 ~-0.15625 as @p[dx=0] positioned ~-0.6875 ~-0.6875 ~-0.6875 if entity @s[dx=0] run tag @n[tag=Attacker] add Hitted
    tag @s remove Attacker
    tp @s ^ ^ ^0.2
    execute unless block ^ ^ ^0.2 #core:not_solid run tag @s add Hitted
    execute if entity @s[scores={RepeatTime=..5},tag=!Hitted] positioned as @s run function assets:item_display/mid/skull_shot/teleport
    scoreboard players reset @s RepeatTime