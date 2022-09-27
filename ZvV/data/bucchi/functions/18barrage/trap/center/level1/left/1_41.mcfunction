execute store success score $time obj run scoreboard players add $trap obj 1
scoreboard players add @e[tag=!barrage,tag=center1_2] obj 1
tag @e[tag=!barrage,tag=center1_2C,scores={obj=2}] remove center1_2
tag @e[tag=!barrage,tag=center1_2C,scores={obj=2}] add straight0.5
tag @e[tag=!barrage,tag=center1_2C,scores={obj=2}] add barrage

execute if score $trap obj matches 2..10 positioned as @e[tag=P] run particle minecraft:flame ~ 65.5 ~ 0.3 0.3 0.3 0 30 force
execute if score $trap obj matches 10 run kill @e[tag=P]
execute as @e[tag=P] at @s run teleport @s ^ ^ ^-2.5
execute positioned as @e[tag=P] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["center1_2C", "center1_2", "position-0.535_0.54", "arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute positioned as @e[tag=P] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["center1_2D", "center1_2", "position-0.535_0.54", "arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute at @e[tag=center1_2A] rotated ~90 0 run teleport @e[limit=2,sort=nearest,tag=center1_2] ^0.535 ^ ^-1 ~ 0
execute at @e[tag=center1_2B] rotated ~-90 0 run teleport @e[limit=2,sort=nearest,tag=center1_2] ^0.535 ^ ^-1 ~ 0