execute if score $level obj matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["aim", "straight0.5", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_concrete", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute if score $level obj matches 2 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["aim", "straight0.5", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:green_concrete", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute if score $level obj matches 3 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["aim", "straight0.5", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute facing entity @e[limit=1,sort=nearest,type=minecraft:zombie,tag=!dontkill] feet run teleport @e[tag=!barrage,tag=aim] ~ ~ ~ ~ 0
tag @e[tag=!barrage,tag=aim] add barrage