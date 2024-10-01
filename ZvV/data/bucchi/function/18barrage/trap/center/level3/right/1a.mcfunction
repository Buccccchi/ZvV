summon minecraft:armor_stand 0 55 -200 {Tags: ["P1", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P2", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P3", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P4", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P5", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P6", "Center"], Invisible: 1b}
summon minecraft:armor_stand 0 55 -200 {Tags: ["P7", "Center"], Invisible: 1b}
execute as @e[tag=Center] run function bucchi:18barrage/trap/center/level3/right/1b

execute positioned 0 60 -200 rotated as @e[tag=Axis1,limit=2] rotated ~90 ~ positioned ^ ^ ^1 rotated as @e[tag=Axis1,limit=2] positioned ^ ^ ^1 facing 0 60 -200 positioned 0 60 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis1,limit=2] positioned ^ ^ ^1 facing 0 60 -200 positioned 0 60 -200 run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["Right", "Red", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Red", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "Orange", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:orange_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Orange", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:orange_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "Yellow", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:yellow_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Yellow", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:yellow_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "Lime", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Lime", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:lime_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "LightBlue", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "LightBlue", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "Blue", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:blue_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Blue", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:blue_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Right", "Purple", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:purple_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Right,tag=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["Left", "Purple", "Center3_3", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:purple_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=Center3_3] at @s run teleport @s ~ 62 ~ facing 0 62 -200

execute as @a positioned as @s run playsound minecraft:entity.ender_dragon.shoot master @s ~ ~ ~ 0.3 1