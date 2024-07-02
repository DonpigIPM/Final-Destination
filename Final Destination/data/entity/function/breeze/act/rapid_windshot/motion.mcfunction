#> entity:breeze/act/rapid_windshot/motion

# set data
    tp @s ~ ~ ~ facing entity @n[tag=FD.MobTarget] eyes
    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^2.0 {Tags:["FD.BreezeWindChargeMotion"],Marker:1b,Invisible:1b}
    data merge storage entity: {Temp:{Tags:["FD.RapidShot.Wind_Charge"]}}
    data modify storage entity: Temp.Motion set from entity @n[type=minecraft:armor_stand,tag=FD.BreezeWindChargeMotion] Pos
    kill @n[tag=FD.BreezeWindChargeMotion]
    data modify storage entity: Temp.Owner set from entity @n[tag=FD.Attacker] UUID
    kill @s