gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text":"工場ステージ","italic":true}
title @a title {"text":"試合開始","color":"yellow","bold":true}
setblock 100 66 86 minecraft:redstone_block
fill 112 69 98 112 69 102 minecraft:iron_block
fill 88 69 98 88 69 102 minecraft:iron_block

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 0 true