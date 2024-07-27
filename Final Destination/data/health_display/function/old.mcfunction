#> health_display:old

scoreboard players set #HPDisplayX HPDisplay 130
execute if score #OldHP OldHP matches 10.. run scoreboard players add #HPDisplayX HPDisplay 1
execute if score #OldHPMax OldHPMax matches 10.. run scoreboard players add #HPDisplayX HPDisplay 1
execute if score #OldHP OldHP matches 100.. run scoreboard players add #HPDisplayX HPDisplay 1
execute if score #OldHPMax OldHPMax matches 100.. run scoreboard players add #HPDisplayX HPDisplay 1
execute if score #OldHP OldHP matches 1000.. run scoreboard players add #HPDisplayX HPDisplay 1
execute if score #OldHPMax OldHPMax matches 1000.. run scoreboard players add #HPDisplayX HPDisplay 1

execute store result storage hpdisplay: args.x int -1 run scoreboard players get #HPDisplayX HPDisplay
function health_display:cut_str with storage hpdisplay: args