#> entity:mid/skeletons/act/bone_blade/summon

# set data
    tag @s add BoneBlade
    tag @s add SpecialMob
    data merge entity @s {scale:[0.8f,0.8f,0.8f],teleport_duration:1,item:{id:"minecraft:iron_sword",count:1},transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.0000f,-0.7071f,0.7071f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
    tp @s ~ ~ ~ facing entity @p[tag=MobTarget] eyes