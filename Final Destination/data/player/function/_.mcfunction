# player:_

# init
    execute if entity @s[tag=!PlayerAlreadyInit] run function player:init

# tag
    execute if entity @s[tag=Targetable,gamemode=!survival,gamemode=!adventure] run tag @s remove Targetable
    execute unless entity @s[tag=!Targetable,gamemode=!survival,gamemode=!adventure] run tag @s add Targetable

# status
    function player:status/update
    function player:status/display
    execute unless score @s status matches -2147483648..2147483647 run function player:status/show_list