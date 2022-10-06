gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "サバイバルステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 0 66 86 minecraft:redstone_block
fill 12 69 98 12 69 102 minecraft:dirt
fill -12 69 98 -12 69 102 minecraft:dirt

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed 1000000 0 true