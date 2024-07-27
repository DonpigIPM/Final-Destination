#> entity:early/enderman/act/eye_from_the_end/_

# check
    execute store result score #UsedTime Temporary run scoreboard players get @s EFTEUsed
    execute store result score #UsingTime Temporary run time query gametime
    scoreboard players operation #UsedTime Temporary += #600 Constant
    execute if score #UsedTime Temporary <= #UsingTime Temporary run function entity:early/enderman/act/eye_from_the_end/act
    scoreboard players reset #UsedTime Temporary
    scoreboard players reset #UsingTime Temporary