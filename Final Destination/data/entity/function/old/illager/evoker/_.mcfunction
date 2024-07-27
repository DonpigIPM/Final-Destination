#> entity:early/illager/evoker/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer AITimer = @s AITimer
    scoreboard players operation #AITimer AITimer %= #40 Constant
    execute if score @s AITimer matches 1 run function entity:early/illager/evoker/act/well_aimed_lightning/_
    execute if score #AITimer AITimer matches 0 run function entity:early/illager/evoker/act/merciless_fang/_
    execute if score @s AITimer matches 600.. run scoreboard players reset @s AITimer

# brainwashing
    execute if entity @e[type=minecraft:villager,distance=..16] run function entity:early/illager/evoker/act/brainwashing/_

# booming smash
    execute if score @s BoomingSmashCooltime matches 1.. run scoreboard players remove @s BoomingSmashCooltime 1
    execute if score @s BoomingSmashCooltime matches 0 run scoreboard players reset @s BoomingSmashCooltime
    execute if entity @n[tag=MobTarget,distance=..4] unless score @s BoomingSmashCooltime matches 1.. run function entity:early/illager/evoker/act/booming_smash/_

# appropriate support
    execute if score #AITimer AITimer matches 0 if entity @e[type=#minecraft:raiders,distance=..32,tag=!EvokerBuffed] run function entity:early/illager/evoker/act/appropriate_support/_