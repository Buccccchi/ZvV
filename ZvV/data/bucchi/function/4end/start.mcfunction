gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "エンドステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock -100 66 -114 minecraft:redstone_block
fill -88 69 -102 -88 69 -98 minecraft:obsidian
fill -112 69 -102 -112 69 -98 minecraft:obsidian

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed 1000000 1 true
scoreboard players set @e[type=minecraft:zombie,tag=!DontKill] Global 0