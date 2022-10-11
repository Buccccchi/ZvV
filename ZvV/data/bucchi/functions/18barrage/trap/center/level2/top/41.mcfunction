summon minecraft:armor_stand ~ 60 ~ {Tags: ["Center2_4", "Tear"], ArmorItems: [{}, {}, {}, {id: "minecraft:ghast_tear", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 0.0f, 0.0f]}}
summon minecraft:armor_stand ~ 60 ~ {Tags: ["Center2_4", "Block"], ArmorItems: [{}, {}, {}, {id: "minecraft:tube_coral_block", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute facing 0 65 -200 run teleport @e[tag=!Barrage,tag=Center2_4,tag=Tear] ~ 62 ~ ~180 0
teleport @e[tag=!Barrage,tag=Center2_4,tag=Block] ~ 62 ~ ~ ~
tag @e[tag=!Barrage,tag=Center2_4] add Barrage