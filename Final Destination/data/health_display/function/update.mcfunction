tag @s add This
scoreboard players operation #OldHP OldHP = @s OldHP
scoreboard players operation #OldHPMax OldHPMax = @s OldHPMax

execute store result score #NewHP NewHP run data get entity @s Health
execute store result score #NewHPMax NewHPMax run attribute @s minecraft:generic.max_health get
execute store result score #Absorption Temporary run data get entity @s AbsorptionAmount
scoreboard players operation #NewHP NewHP += #Absorption Temporary
execute if score #OldHP OldHP matches 0 unless data entity @s CustomName run function health_display:get_name
data modify storage hpdisplay: CustomName set from entity @s CustomName
execute if score #NewHP NewHP matches 0 run scoreboard players set #NewHP NewHP 1

execute if score #OldHP OldHP matches 1.. run function health_display:old

scoreboard players operation #HP Temporary = #NewHP NewHP
scoreboard players operation #HPMax Temporary = #NewHPMax NewHPMax
scoreboard players operation #HP Temporary *= #100 Constant
execute store result score @s HPRatio run scoreboard players operation #HP Temporary /= #HPMax Temporary
execute if score @s NewHP > @s NewHPMax run scoreboard players set @s HPRatio 101

execute if score @s HPRatio matches 101.. run data modify entity 83a-51-1-0-2 text set value '["",{"nbt":"CustomName","storage":"hpdisplay:","interpret":true},{"text": " "},{"score":{"objective":"NewHP","name":"#NewHP"},"color":"#FFAA00"},{"text":"/","color":"#AAAAAA"},{"score":{"objective":"NewHPMax","name":"#NewHPMax"},"color":"#55FF55"},{"text":"❤","color":"#FF5555"}]'
execute if score @s HPRatio matches 51..100 run data modify entity 83a-51-1-0-2 text set value '["",{"nbt":"CustomName","storage":"hpdisplay:","interpret":true},{"text": " "},{"score":{"objective":"NewHP","name":"#NewHP"},"color":"#55FF55"},{"text":"/","color":"#AAAAAA"},{"score":{"objective":"NewHPMax","name":"#NewHPMax"},"color":"#55FF55"},{"text":"❤","color":"#FF5555"}]'
execute if score @s HPRatio matches 21..50 run data modify entity 83a-51-1-0-2 text set value '["",{"nbt":"CustomName","storage":"hpdisplay:","interpret":true},{"text": " "},{"score":{"objective":"NewHP","name":"#NewHP"},"color":"#FFFF55"},{"text":"/","color":"#AAAAAA"},{"score":{"objective":"NewHPMax","name":"#NewHPMax"},"color":"#55FF55"},{"text":"❤","color":"#FF5555"}]'
execute if score @s HPRatio matches ..20 run data modify entity 83a-51-1-0-2 text set value '["",{"nbt":"CustomName","storage":"hpdisplay:","interpret":true},{"text": " "},{"score":{"objective":"NewHP","name":"#NewHP"},"color":"#FF5555"},{"text":"/","color":"#AAAAAA"},{"score":{"objective":"NewHPMax","name":"#NewHPMax"},"color":"#55FF55"},{"text":"❤","color":"#FF5555"}]'


scoreboard players operation @s OldHP = #NewHP NewHP
scoreboard players operation @s OldHPMax = #NewHPMax NewHPMax
data modify entity @s CustomName set from entity 83a-51-1-0-2 text
scoreboard players reset #HP Temporary
scoreboard players reset #HPMax Temporary
tag @s remove This