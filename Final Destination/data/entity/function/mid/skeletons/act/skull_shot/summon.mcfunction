#> entity:mid/skeletons/act/skull_shot/summon

# set data
    tag @s add SkullShot
    tag @s add SpecialMob
    data merge entity @s {transformation:[-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.15625f,-0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1,item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1995220249,1805142281,-1428751176,1321653649],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjk1ZDg3NTE0MGI5OTIzNWVjNWU0NDg2MjQyYTcwZGE4ODFhN2MxODNiNjUwY2VhZmFlMDA4NGJjZWI2NjE4MiJ9fX0="}]}}}}
    tp @s ~ ~ ~ facing entity @p[tag=MobTarget] eyes