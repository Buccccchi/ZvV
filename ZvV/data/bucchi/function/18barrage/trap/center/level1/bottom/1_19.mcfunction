summon minecraft:armor_stand ~ ~ ~ {Tags: ["Center1_1", "Position-0.535_0.54", "Sword"], ArmorItems: [{}, {}, {}, {id: "minecraft:iron_sword", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
teleport @e[tag=!Barrage,tag=Center1_1] ^0.535 ^1.49 ^-0.54 ~ 0
tag @e[tag=!Barrage,tag=Center1_1] add Barrage
execute if entity @s[tag=Left] positioned ^ ^ ^-0.45 rotated ~30 0 run teleport @s ^ ^ ^-0.45 ~ 0
execute if entity @s[tag=!Left] positioned ^ ^ ^-0.45 rotated ~-30 0 run teleport @s ^ ^ ^-0.45 ~ 0