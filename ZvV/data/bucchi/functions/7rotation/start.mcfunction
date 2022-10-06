gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "回転ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 100 64 -14 minecraft:redstone_block
fill 112 69 -2 112 69 2 minecraft:black_concrete
fill 88 69 -2 88 69 2 minecraft:black_concrete

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed 1000000 0 true