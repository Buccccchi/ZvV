execute if score $time Global matches 1 run function bucchi:18barrage/trap/center/level3/top/1
execute at @e[tag=P1] positioned ~ 66 ~ run particle minecraft:dust 1 1 0 3 ^ ^ ^1.5 0 0 0 0 5 force
execute at @e[tag=P2] positioned ~ 66 ~ run particle minecraft:happy_villager ^ ^ ^1 0.2 0.3 0.2 0 10 force
execute at @e[tag=P1] run summon minecraft:armor_stand ^ ^ ^1.5 {Tags: ["center3_4A", "main", "position0_0", "block"], ArmorItems: [{}, {}, {}, {id: "minecraft:horn_coral_block", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute at @e[tag=P2] positioned ~ 62.5 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["center3_4B", "main", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_concrete_powder", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!barrage,tag=main] positioned as @s positioned ~ ~30 ~ facing 0 65 -200 positioned as @s run teleport @s ~ ~3 ~ ~ ~
tag @e[tag=!barrage,tag=main] add barrage
execute as @e[tag=P1] positioned as @s facing 0 62 -200 rotated ~-21.6 0 positioned 0 62 -200 positioned ^ ^ ^-2.5 rotated as @s run teleport @s ~ ~ ~ ~14.4 0
execute as @e[tag=P2] positioned as @s facing 0 62 -200 rotated ~14.4 0 positioned 0 62 -200 positioned ^ ^ ^-5 rotated as @s run teleport @s ~ ~ ~ ~-21.6 0