gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "沼地ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 200 66 -116 minecraft:redstone_block
fill 214 69 -102 214 69 -98 minecraft:dirt
fill 186 69 -102 186 69 -98 minecraft:dirt

data modify entity @e[tag=Witch,limit=1] NoAI set value 0b