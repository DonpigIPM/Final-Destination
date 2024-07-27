#> core:load

# Tag VoidDonpig <- me
    tag a675a99c-635e-414f-9dc5-b203d1c03e8e add TrustedAdmin

# scoreboard objectives
    tellraw @a[tag=TrustedAdmin] {"text": "[System] Adding Scoreboard Objectives...", "color": "light_purple"}
    scoreboard objectives add AITimer dummy
    scoreboard objectives add BoomingSmashCooltime dummy
    scoreboard objectives add Constant dummy
    scoreboard objectives add EFTEUsed dummy
    scoreboard objectives add GameProgress dummy
    scoreboard objectives add GloomyShieldUsed dummy
    scoreboard objectives add HPDisplay dummy
    scoreboard objectives add HPRatio dummy
    scoreboard objectives add KillTimer dummy
    scoreboard objectives add NewHP dummy
    scoreboard objectives add NewHPMax dummy
    scoreboard objectives add OldHP dummy
    scoreboard objectives add OldHPMax dummy
    scoreboard objectives add OldName dummy
    scoreboard objectives add RepeatTime dummy
    scoreboard objectives add Temporary dummy

# Status
    scoreboard objectives add Health dummy {"text": "❤","color": "red"}
    scoreboard objectives add MaxHealth dummy
    scoreboard objectives add Mana dummy {"text": "✎","color": "aqua"}
    scoreboard objectives add MaxMana dummy
    scoreboard objectives add Damage dummy {"text": "☠","color": "red"}
    scoreboard objectives add Speed dummy {"text": "☄","color": "white"}
    scoreboard objectives add MiningSpeed dummy {"text": "☄","color": "yellow"}
    scoreboard objectives add FarmingFortune dummy {"text": "☀","color": "gold"}
    scoreboard objectives add FarmingFortuneConfirmed dummy
    scoreboard objectives add FarmingFortuneChance dummy
    scoreboard objectives add MiningFortune dummy {"text": "✦","color": "gold"}
    scoreboard objectives add MiningFortuneConfirmed dummy
    scoreboard objectives add MiningFortuneChance dummy
    scoreboard objectives add Luck dummy {"text": "✯","color": "green"}

# constants
    scoreboard players set #1 Constant 1
    scoreboard players set #5 Constant 5
    scoreboard players set #10 Constant 10
    scoreboard players set #15 Constant 15
    scoreboard players set #20 Constant 20
    scoreboard players set #30 Constant 30
    scoreboard players set #40 Constant 40
    scoreboard players set #60 Constant 60
    scoreboard players set #80 Constant 80
    scoreboard players set #100 Constant 100
    scoreboard players set #300 Constant 300
    scoreboard players set #600 Constant 600

# triggers
    scoreboard objectives add status trigger
    scoreboard players enable @a status

# set value
    tellraw @a[tag=TrustedAdmin] {"text": "[System] Resetting Record of Game Progress...", "color": "light_purple"}

# Forceload
    tellraw @a[tag=TrustedAdmin] {"text": "[System] Adding Forceload Area...", "color": "light_purple"}
    execute in minecraft:overworld run forceload add -1 -1 0 0
    execute in minecraft:the_nether run forceload add -1 -1 0 0
    execute in minecraft:the_end run forceload add -1 -1 0 0

# setup functional stuff
    tellraw @a[tag=TrustedAdmin] {"text": "[System] Setting Functional Stuff...", "color": "light_purple"}
    kill 83a-51-1-0-0
    kill 83a-51-1-0-1
    summon minecraft:marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}
    summon minecraft:armor_stand 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,1],Marker:1b,Invisible:1b}
    setblock 0 -64 0 white_shulker_box{Lock:"General Shulker Box"}

# summon entity
    tellraw @a[tag=TrustedAdmin] {"text": "[System] Setting Health Display...", "color": "light_purple"}
    kill 83a-51-1-0-2
    summon minecraft:text_display 0 -64 0 {UUID:[I; 2106,5308417,0,2]}

# first load
    execute unless data storage core: {FirstLoaded:1b} run function core:init