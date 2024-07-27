#> entity:mid/breeze/act/rapid_windshot/motion

# set data
    tp @s ~ ~ ~ facing entity @n[tag=MobTarget] eyes
    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^2.0 {Tags:["BreezeWindChargeMotion"],Marker:1b,Invisible:1b}
    data merge storage entity:mid/ {Temp:{Tags:["RapidShot.Wind_Charge"]}}
    data modify storage entity:mid/ Temp.Motion set from entity @n[type=minecraft:armor_stand,tag=BreezeWindChargeMotion] Pos
    kill @n[tag=BreezeWindChargeMotion]
    data modify storage entity:mid/ Temp.Owner set from entity @n[tag=Attacker] UUID
    kill @s