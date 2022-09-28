gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "弾幕ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 0 66 -216 minecraft:redstone_block
setblock 0 66 -217 minecraft:redstone_block
fill 14 69 -202 14 69 -198 minecraft:black_concrete
fill -14 69 -202 -14 69 -198 minecraft:black_concrete

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 2 true
bossbar add bucchi:level {"text": "Level 1", "color": "aqua"}
bossbar set bucchi:level color blue
bossbar set bucchi:level max 10
bossbar set bucchi:level style notched_10
bossbar set bucchi:level players @a