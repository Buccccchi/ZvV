execute store success score $Time Global run scoreboard players add $Trap Global 1
scoreboard players add @e[tag=!Barrage,tag=Center1_2] Global 1
tag @e[tag=!Barrage,tag=Center1_2C,scores={Global=2}] remove Center1_2
tag @e[tag=!Barrage,tag=Center1_2C,scores={Global=2}] add Straight0.5
tag @e[tag=!Barrage,tag=Center1_2C,scores={Global=2}] add Barrage

execute if score $Trap Global matches 2..10 positioned as @e[tag=P] run particle minecraft:flame ~ 65.5 ~ 0.3 0.3 0.3 0 30 force
execute if score $Trap Global matches 10 run kill @e[tag=P]
execute as @e[tag=P] at @s run teleport @s ^ ^ ^-2.5
execute positioned as @e[tag=P] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center1_2C", "Center1_2", "Position-0.535_0.54", "Arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute positioned as @e[tag=P] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center1_2D", "Center1_2", "Position-0.535_0.54", "Arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute at @e[tag=Center1_2A] rotated ~90 0 run teleport @e[tag=Center1_2,sort=nearest,limit=2] ^0.535 ^ ^-1 ~ 0
execute at @e[tag=Center1_2B] rotated ~-90 0 run teleport @e[tag=Center1_2,sort=nearest,limit=2] ^0.535 ^ ^-1 ~ 0