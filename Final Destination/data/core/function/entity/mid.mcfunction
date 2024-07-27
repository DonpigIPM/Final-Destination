#> core:entity/mid

# init
    execute if entity @s[tag=!AlreadyInit] run function entity:mid/init

# health display updater
    execute store result score #HP Temporary run data get entity @s Health
    execute store result score #Absorp Temporary run data get entity @s AbsorptionAmount
    scoreboard players operation #HP Temporary += #Absorp Temporary
    execute store result score #MaxHealth Temporary run attribute @s minecraft:generic.max_health get
    execute unless score @s OldHP = #HP Temporary run function health_display:update
    execute unless score @s OldHPMax = #MaxHealth Temporary run function health_display:update
    scoreboard players reset #HP Temporary
    scoreboard players reset #Absorp Temporary
    scoreboard players reset #MaxHealth Temporary

# act
    execute on target if entity @s[type=minecraft:player] run tag @s add MobTarget
    execute if entity @n[tag=MobTarget] if entity @s[tag=!SpecialMob] run function entity:mid/_
    execute if entity @n[tag=MobTarget] if entity @s[tag=SpecialMob] run function entity:mid/special/_
    tag @a[tag=MobTarget] remove MobTarget

# gloomy shield
    execute if entity @s[tag=UsingGloomyShield] run function entity:mid/enderman/act/gloomy_shield/act

# kill no passenger
    execute if entity @s[tag=NoPassengerKill] unless predicate entity:passenger run kill @s

# Autokill
    execute if entity @s[tag=AutoKill1m] run scoreboard players add @s KillTimer 1
    kill @s[scores={KillTimer=1200..},tag=AutoKill1m]