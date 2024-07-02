#> entity:special/eye_from_the_end/_

# AI
    scoreboard players add @s AITimer 1
    scoreboard players operation #AITimer Temporary = @s AITimer
    scoreboard players operation #AITimer Temporary %= #40 Constant
    execute if score #AITimer Temporary matches 0 run function entity:special/eye_from_the_end/act/_
    damage @n[tag=FD.MobTarget,distance=..3] 10 mob_attack by @s