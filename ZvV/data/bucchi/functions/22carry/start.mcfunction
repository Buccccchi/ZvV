gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "運搬ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 200 66 -17 minecraft:redstone_block
fill 214 69 -1 214 69 1 minecraft:birch_fence_gate[facing=west,open=true]
fill 186 69 -1 186 69 1 minecraft:birch_fence_gate[facing=east,open=true]

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 0 true