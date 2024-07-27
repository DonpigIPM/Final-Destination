#> entity:early/special/eye_from_the_end/act/shot

# init
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2 0
    tp @s ~ ~ ~ facing entity @n[tag=MobTarget] eyes
    data merge entity @s {Tags:["SpecialMob","EYE_FROM_THE_END_Shot"],Invisible:true,Invulnerable:true,Marker:true,Small:true,CustomName:'{"text":"Ender Eye Shot"}'}