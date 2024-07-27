#> player:status/update

# get health
    execute store result score @s Health run data get entity @s Health
    execute store result score @s MaxHealth run attribute @s minecraft:generic.max_health get
    execute store result score #AbsorptionAmount Temporary run data get entity @s AbsorptionAmount
    scoreboard players operation @s Health += #AbsorptionAmount Temporary

# set fortune
    scoreboard players operation @s FarmingFortuneConfirmed = @s FarmingFortune
    scoreboard players operation @s FarmingFortuneChance = @s FarmingFortune
    scoreboard players operation @s FarmingFortuneConfirmed /= #100 Constant
    scoreboard players operation #FarmingFortuneConfirmed Temporary = @s FarmingFortuneConfirmed
    scoreboard players operation #FarmingFortuneConfirmed Temporary *= #100 Constant
    scoreboard players operation @s FarmingFortuneChance -= #FarmingFortuneConfirmed Temporary
    scoreboard players reset #FarmingFortuneConfirmed Temporary

    scoreboard players operation @s MiningFortuneConfirmed = @s MiningFortune
    scoreboard players operation @s MiningFortuneChance = @s MiningFortune
    scoreboard players operation @s MiningFortuneConfirmed /= #100 Constant
    scoreboard players operation #MiningFortuneConfirmed Temporary = @s MiningFortuneConfirmed
    scoreboard players operation #MiningFortuneConfirmed Temporary *= #100 Constant
    scoreboard players operation @s MiningFortuneChance -= #MiningFortuneConfirmed Temporary
    scoreboard players reset #MiningFortuneConfirmed Temporary

# get damage
    execute store result score @s Damage run attribute @s minecraft:generic.attack_damage get 1.0

# get speed
    execute store result score @s Speed run attribute @s minecraft:generic.movement_speed get 1000.0

# get mining speed
    execute store result score @s MiningSpeed run attribute @s minecraft:player.block_break_speed get 100.0