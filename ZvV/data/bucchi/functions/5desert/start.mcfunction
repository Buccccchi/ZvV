gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "砂漠ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 0 65 -114 minecraft:redstone_block
fill 12 69 -102 12 69 -98 minecraft:cut_sandstone
fill -12 69 -102 -12 69 -98 minecraft:cut_sandstone

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 0 true
gamerule doDaylightCycle true