scoreboard players set $Level Global 2
scoreboard players set $Count Global 0
bossbar set bucchi:level color green
bossbar set bucchi:level name {"text": "Level 2", "color": "green"}
bossbar set bucchi:level value 0
setblock 0 65 -214 minecraft:redstone_block
execute as @a positioned as @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3 2
# 拡散準備
kill @e[tag=!Barrage,tag=CornerA]
tag @e[tag=CornerB] add CornerA
execute as @e[tag=Corner] at @s run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerB", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] at @s rotated ~30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerB", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] at @s rotated ~-30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerB", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] positioned as @s as @e[tag=!CornerA,tag=CornerB,distance=..3] facing entity @s feet run teleport @s ^0.76 ^ ^0.5 ~180 0