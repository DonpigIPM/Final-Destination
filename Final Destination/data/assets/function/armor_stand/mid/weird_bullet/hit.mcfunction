#> entity:armor_stand/mid/weird_bullet/hit

# damage
    tag @s add Attacker
    damage @p[tag=Victim] 10 minecraft:mob_projectile by @n[tag=Attackker]
    effect give @p[tag=Victim] minecraft:wither 10 0 true
    tag @s remove Attacker
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    playsound minecraft:entity.shulker_bullet.hit hostile @a 1 0.5 0

# reset
    tag @p[tag=Victim] remove Victim
    kill @s