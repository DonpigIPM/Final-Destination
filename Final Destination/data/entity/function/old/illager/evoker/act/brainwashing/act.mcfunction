#> entity:early/illager/evoker/act/brainwashing/act

# change into vindicator
    summon minecraft:vindicator
    playsound minecraft:entity.evoker.prepare_wololo hostile @a ~ ~ ~ 1 2 0
    particle minecraft:entity_effect{color:[0.259,0.259,0.259,1.00]} ~ ~ ~ 0 0 0 1 40 force
    tp @s ~ -1000 ~
    kill @s