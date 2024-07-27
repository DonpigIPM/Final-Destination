#> entity:mid/skeletons/_

# tactical judgement
    execute unless entity @s[tag=Unswitchable] run function entity:mid/skeletons/act/tactical_judgement/_

# each AI
    execute if entity @s[type=minecraft:skeleton] run function entity:mid/skeletons/skeleton/_
    execute if entity @s[type=minecraft:wither_skeleton] run function entity:mid/skeletons/wither_skeleton/_