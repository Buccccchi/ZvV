gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "ビーチステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 100 65 -114 minecraft:redstone_block
fill 112 69 -94 112 69 -90 minecraft:cut_sandstone
fill 88 69 -110 88 69 -106 minecraft:cut_sandstone

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 1 true