execute at @e[tag=Axis1,limit=2] rotated ~45 0 positioned ^ ^ ^12.5 rotated as @e[tag=Axis1,limit=2] rotated ~45 0 positioned ^ ^ ^5.56 rotated as @e[tag=Axis1,limit=2] rotated ~45 0 positioned ^ ^ ^2.78 rotated as @e[tag=Axis1,limit=2] rotated ~45 0 positioned ~ 62 ~ run summon minecraft:armor_stand ^ ^ ^1.39 {Tags: ["Center3_2B", "Center3_2", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:chorus_flower", Count: 1b, tag: {Enchantments: [{}]}}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute at @e[tag=Axis1,limit=2] rotated ~-45 0 positioned ^ ^ ^12.5 rotated as @e[tag=Axis1,limit=2] rotated ~-45 0 positioned ^ ^ ^5.56 rotated as @e[tag=Axis1,limit=2] rotated ~-45 0 positioned ^ ^ ^2.78 rotated as @e[tag=Axis1,limit=2] rotated ~-45 0 positioned ~ 62 ~ run summon minecraft:armor_stand ^ ^ ^1.39 {Tags: ["Center3_2B", "Center3_2", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:chorus_flower", Count: 1b, tag: {Enchantments: [{}]}}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=Corner] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center3_2B", "Center3_2", "Position0_0", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:chorus_flower", Count: 1b, tag: {Enchantments: [{}]}}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=Center3_2B] positioned as @s positioned ~ ~100 ~ facing 0 65 -200 positioned ^ ^ ^-5 run teleport @s ~ 65 ~ ~ ~
execute if entity @e[tag=Center3_2B,tag=Right,scores={Global=1}] run tag @e[tag=!Barrage,tag=Center3_2B] add Right