summon minecraft:armor_stand ^ ^ ^2 {Tags: ["center3_1", "position-0.535_0.54", "sword"], ArmorItems: [{}, {}, {}, {id: "minecraft:diamond_sword", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
teleport @e[tag=!barrage,tag=center3_1] ^-0.535 ^1.49 ^2.04 ~180 0
tag @e[tag=!barrage,tag=center3_1] add barrage
execute if entity @s[tag=right] facing 0 62 -200 positioned ^ ^ ^-0.3 rotated as @s run teleport @s ~ ~ ~ ~12 0
execute if entity @s[tag=!right] facing 0 62 -200 positioned ^ ^ ^-0.3 rotated as @s run teleport @s ~ ~ ~ ~-12 0
execute positioned ^ ^ ^1.5 unless block ~ 66 ~ minecraft:air run kill @s
execute positioned ^ ^ ^1.5 if block ~ 64 ~ minecraft:air run kill @s
#execute positioned ^ ^ ^1.5 if predicate