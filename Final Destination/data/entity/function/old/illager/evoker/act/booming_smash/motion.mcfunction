#> entity:early/illager/evoker/act/booming_smash/motion

# set motion
    tp @s ~ ~ ~ facing entity @n[tag=MobTarget] eyes
    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3.0 {Tags:["BoomingSmashMotion"],Marker:1b,Invisible:1b}
    data merge storage entity:early/ {Temp:{Tags:["BoomingSmash_Wind_Charge"]}}
    data modify storage entity:early/ Temp.Motion set from entity @n[type=minecraft:armor_stand,tag=BoomingSmashMotion] Pos
    kill @n[tag=BoomingSmashMotion]
    data modify storage entity:early/ Temp.Owner set from entity @n[tag=Attacker] UUID
    kill @s