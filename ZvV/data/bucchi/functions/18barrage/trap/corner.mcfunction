tag @e[tag=!barrage,tag=cornerA,distance=..3] add straight0.3
tag @e[tag=!barrage,tag=cornerA,distance=..3] add barrage
execute if score $level obj matches 1 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $level obj matches 2 rotated ~22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $level obj matches 2 rotated ~-22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $level obj matches 3 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $level obj matches 3 rotated ~30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $level obj matches 3 rotated ~-30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["cornerA", "position0.76_0", "dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=!barrage,tag=cornerA,distance=..3] facing entity @s feet run teleport @s ^0.76 ^ ^0.5 ~180 0