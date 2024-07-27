#> assets:item_display/mid/skull_shot/_

# act
    function assets:item_display/mid/skull_shot/teleport
    execute if entity @s[tag=Hitted] run function assets:item_display/mid/skull_shot/hit
    scoreboard players add @s KillTimer 1
    execute if score @s KillTimer matches 40.. run kill @s