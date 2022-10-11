execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level1/top/1
execute at @e[tag=P] positioned ~ 66 ~ run particle minecraft:witch ^ ^ ^2 0.3 0 0.3 0 10 force
execute at @e[tag=P] run summon minecraft:armor_stand ^ ^ ^2 {Tags: ["Center1_4", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:brain_coral_block", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=Center1_4] positioned as @s positioned ~ ~30 ~ facing 0 65 -200 run teleport @s ~ 65 ~ ~ ~
tag @e[tag=!Barrage,tag=Center1_4] add Barrage
execute as @e[tag=P] positioned as @s facing 0 62 -200 rotated ~-21.6 0 positioned 0 62 -200 positioned ^ ^ ^-3 rotated as @s run teleport @s ~ ~ ~ ~14.4 0