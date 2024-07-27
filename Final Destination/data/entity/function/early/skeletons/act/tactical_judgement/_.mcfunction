#> entity:skeletons/act/tactical_judgement/_

# switch weapon
    tag @s remove SkeletonMelee
    execute if entity @n[tag=MobTarget,distance=..4] run tag @s add SkeletonMelee
    execute if entity @s[tag=!SkeletonMelee] run item replace entity @s weapon.mainhand with minecraft:bow
    execute if entity @s[type=minecraft:skeleton,tag=SkeletonMelee] run item replace entity @s weapon.mainhand with minecraft:wooden_axe
    execute if entity @s[type=minecraft:wither_skeleton,tag=SkeletonMelee] run item replace entity @s weapon.mainhand with minecraft:stone_sword