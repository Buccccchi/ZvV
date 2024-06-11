# 試合開始
gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "洞窟ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 100 66 186 minecraft:redstone_block
fill 112 69 198 112 69 202 minecraft:stone
fill 88 69 198 88 69 202 minecraft:stone

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 0 true