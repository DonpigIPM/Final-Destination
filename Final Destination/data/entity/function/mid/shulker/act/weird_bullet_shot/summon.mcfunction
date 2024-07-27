#> entity:mid/shulker/act/weird_bullet_shot/summon

# set data
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 1 2 0
    data merge entity @s {Tags:["WeirdBullet","SpecialMob","AutoKill1m"],Marker:true,Small:true,Invisible:true,CustomName:'"奇妙な弾丸"'}
    tp @s ~ ~ ~ facing entity @p[tag=MobTarget]