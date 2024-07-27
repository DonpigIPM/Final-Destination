#> entity:mid/zombies/drowned/act/bubble_implosion/shot

# init
    playsound entity.glow_squid.hurt hostile @a ~ ~ ~ 1 2 0
    tp @s ~ ~ ~ facing entity @n[tag=MobTarget] eyes
    tp @s ~ ~ ~ ~20 ~ 
    data merge entity @s {Tags:["SpecialMob","Bubble_Implosion_Shot"],Invisible:true,Invulnerable:true,Marker:true,Small:true,CustomName:'{"text":"Bubble Implosion"}'}