#> entity:skeletons/act/tactical_judgement/_

# switch weapon
    execute if entity @p[tag=MobTarget,distance=..4] if entity @s[tag=SkeletonMelee] run tag @s add AlreadySwitched
    execute unless entity @p[tag=MobTarget,distance=..4] if entity @s[tag=!SkeletonMelee] run tag @s add AlreadySwitched
    execute if entity @p[tag=MobTarget,distance=..4] run tag @s add SkeletonMelee
    execute unless entity @p[tag=MobTarget,distance=..4] run tag @s remove SkeletonMelee
    execute if entity @s[tag=!SkeletonMelee,tag=!AlreadySwitched] run item replace entity @s weapon.mainhand with minecraft:bow
    execute if entity @s[type=minecraft:skeleton,tag=SkeletonMelee,tag=!AlreadySwitched] run item replace entity @s weapon.mainhand with minecraft:iron_axe
    execute if entity @s[type=minecraft:wither_skeleton,tag=SkeletonMelee,tag=!AlreadySwitched] run item replace entity @s weapon.mainhand with minecraft:diamond_sword
    tag @s remove AlreadySwitched