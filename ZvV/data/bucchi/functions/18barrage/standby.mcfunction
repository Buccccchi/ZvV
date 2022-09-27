#スコアボード設定
scoreboard objectives add corner dummy
scoreboard objectives add aim dummy
scoreboard objectives add follow dummy
scoreboard players set $level obj 1
#AEC召喚
summon minecraft:area_effect_cloud 0 62 -200 {Tags: ["O1", "axis2"], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 0 62 -200 {Tags: ["O2", "axis2"], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud -12.0 63.48 -212.0 {Tags: ["corner", "corner1", "axis1"], Rotation: [-45.0f, 0.0f], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 13.0 63.48 -212.0 {Tags: ["corner", "corner2"], Rotation: [45.0f, 0.0f], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud -12.0 63.48 -187.0 {Tags: ["corner", "corner3"], Rotation: [-135.0f, 0.0f], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 13.0 63.48 -187.0 {Tags: ["corner", "corner4", "axis1"], Rotation: [135.0f, 0.0f], Duration: 2147483647, Radius: 0f}
#拡散準備
execute as @e[tag=corner] at @s run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=corner] at @s rotated ~22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerB", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=corner] at @s rotated ~-22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerB", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=corner] positioned as @s as @e[tag=dye,distance=..3] facing entity @s feet run teleport @s ^0.76 ^ ^0.5 ~180 0
#召喚
scoreboard players set $standby obj 30
summon minecraft:armor_stand 20 68 -202 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -20 68 -202 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:18barrage/summon