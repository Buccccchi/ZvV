# スコアボード設定
scoreboard objectives add Corner dummy
scoreboard objectives add Aim dummy
scoreboard objectives add Follow dummy
scoreboard players set $Level Global 1
# marker召喚
summon minecraft:marker 0 62 -200 {Tags: ["O1", "Axis2"]}
summon minecraft:marker 0 62 -200 {Tags: ["O2", "Axis2"]}
summon minecraft:marker -12.0 63.48 -212.0 {Tags: ["Corner", "Corner1", "Axis1"], Rotation: [-45.0f, 0.0f]}
summon minecraft:marker 13.0 63.48 -212.0 {Tags: ["Corner", "Corner2"], Rotation: [45.0f, 0.0f]}
summon minecraft:marker -12.0 63.48 -187.0 {Tags: ["Corner", "Corner3"], Rotation: [-135.0f, 0.0f]}
summon minecraft:marker 13.0 63.48 -187.0 {Tags: ["Corner", "Corner4", "Axis1"], Rotation: [135.0f, 0.0f]}
# 拡散準備
execute as @e[tag=Corner] at @s run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] at @s rotated ~22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerB", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] at @s rotated ~-22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerB", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=Corner] positioned as @s as @e[tag=Dye,distance=..3] facing entity @s feet run teleport @s ^0.76 ^ ^0.5 ~180 0
# 召喚
scoreboard players set $Standby Global 30
summon minecraft:marker 20 68 -202 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker -20 68 -202 {Tags: ["Standby", "Villager"]}
function bucchi:18barrage/summon