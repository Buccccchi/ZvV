scoreboard players set $RandMax Global 45
execute store result entity @e[tag=O1,limit=1] Rotation[0] float 1 run function bucchi:random
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~180 0
execute if predicate bucchi:random/50 run tag @e[tag=Axis2] add Right

execute positioned 0 60 -200 rotated as @e[tag=Axis2,limit=2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 60 -200 positioned 0 60 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 60 -200 positioned 0 60 -200 run summon minecraft:armor_stand ^ ^ ^2 {Tags: ["Right", "Center2_3", "Position0_0", "SmallBlock"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=!Barrage,tag=Center2_3] run summon minecraft:armor_stand ~ 60.6 ~ {Tags: ["Left", "Center2_3", "Position0_0", "SmallBlock"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=Center2_3] positioned as @s facing 0 60 -200 run teleport @s ~ 62 ~ ~180 70
scoreboard players set @e[tag=!Barrage,tag=Center2_3] Global 1