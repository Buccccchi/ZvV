gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "鏡ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 200 66 -214 minecraft:redstone_block
fill 212 69 -201 212 69 -199 minecraft:smooth_quartz
fill 188 69 -201 188 69 -199 minecraft:smooth_quartz

effect give @e[type=minecraft:zombie,tag=!dontkill] minecraft:speed 1000000 0 true
execute as @e[tag=true] store result score @s id run scoreboard players add $id id 1