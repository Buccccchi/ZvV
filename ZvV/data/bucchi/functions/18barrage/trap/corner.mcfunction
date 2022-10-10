tag @e[tag=!Barrage,tag=CornerA,distance=..3] add Straight0.3
tag @e[tag=!Barrage,tag=CornerA,distance=..3] add Barrage
execute if score $Level Global matches 1 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $Level Global matches 2 rotated ~22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $Level Global matches 2 rotated ~-22.5 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $Level Global matches 3 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $Level Global matches 3 rotated ~30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute if score $Level Global matches 3 rotated ~-30 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags: ["CornerA", "Position0.76_0", "Dye"], ArmorItems: [{}, {}, {}, {id: "minecraft:magenta_dye", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, -90.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=CornerA,distance=..3] facing entity @s feet run teleport @s ^0.76 ^ ^0.5 ~180 0