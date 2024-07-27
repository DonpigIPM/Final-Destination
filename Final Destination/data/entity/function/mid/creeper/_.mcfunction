#> entity:mid/creeper/_

# stealth
    execute if entity @n[tag=MobTarget,distance=3..] run function entity:mid/creeper/act/stealth/_
    execute unless entity @n[tag=MobTarget,distance=3..] run tag @s remove Invisible

# AI
    scoreboard players add @s AITimer 1
    execute if score @s AITimer matches 20 run function entity:mid/creeper/act/booming_aura/_
    scoreboard players reset @s[scores={AITimer=20..}] AITimer