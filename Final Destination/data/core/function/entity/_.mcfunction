#> core:entity/_

# init
    execute if entity @s[tag=!FD.AlreadyInit] run function entity:init

# act
    execute on target run tag @s add FD.MobTarget
    execute if entity @n[tag=FD.MobTarget] if entity @s[tag=!FD.SpecialMob] run function entity:_
    execute if entity @n[tag=FD.MobTarget] if entity @s[tag=FD.SpecialMob] run function entity:special/_
    tag @e[tag=FD.MobTarget] remove FD.MobTarget

# kill no passenger
    execute if entity @s[tag=FD.NoPassengerKill] unless predicate entity:passenger run kill @s

# Autokill
    execute if entity @s[tag=FD.AutoKill1m] run scoreboard players add @s KillTimer 1
    kill @s[scores={KillTimer=60..},tag=FD.AutoKill1m]