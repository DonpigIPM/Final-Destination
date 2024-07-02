#> entity:zombies/drowned/act/bubble_implosion/shot

# init
    playsound entity.glow_squid.hurt hostile @a ~ ~ ~ 1 2 1
    tp @s ~ ~ ~ facing entity @n[tag=FD.MobTarget] eyes
    data merge entity @s {Tags:["FD.SpecialMob","FD.Bubble_Implosion_Shot"],Invisible:true,Invulnerable:true,Marker:true,Small:true,CustomName:'{"text":"Bubble Implosion"}'}