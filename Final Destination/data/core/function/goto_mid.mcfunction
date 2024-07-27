#> core:goto_mid

execute if data storage core: {AlreadyMid:1b} run return fail
data merge storage core: {AlreadyMid:1b}
scoreboard players set #GameProgress GameProgress 2
tellraw @a ["",{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","strikethrough":true},{"text":"\n\u30a8\u30f3\u30c0\u30fc\u30c9\u30e9\u30b4\u30f3\u306e\u6b7b\u304c\u6575\u3092\u3055\u3089\u306b\u5f37\u5316\u3057\u305f\u3088\u3046\u3060...\n"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","strikethrough":true}]