gamemode spectator @a
title @a times 10 30 20
title @a subtitle {"text": "鏡ステージ", "italic": true}
title @a title {"text": "試合開始", "color": "yellow", "bold": true}
setblock 200 66 -214 minecraft:redstone_block
setblock 200 66 -215 minecraft:redstone_block
fill 212 69 -201 212 69 -199 minecraft:smooth_quartz
fill 188 69 -201 188 69 -199 minecraft:smooth_quartz

effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed 1000000 1 true
execute as @e[tag=True] store result score @s ID run scoreboard players add $ID ID 1
scoreboard players set @e[tag=True,type=minecraft:zombie] Jump 0
tag @a add StopCount