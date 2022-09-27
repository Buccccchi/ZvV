gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "カウントダウンステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock -100 66 -14 minecraft:redstone_block
fill -88 69 -2 -88 69 2 minecraft:black_concrete
fill -112 69 -2 -112 69 2 minecraft:black_concrete

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 1 true