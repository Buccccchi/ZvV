execute if score $Trap Global matches 1 run scoreboard players set $TrapA Global 0
scoreboard players add @e[tag=!Barrage,tag=Center2_2_1] Global 1
tag @e[tag=!Barrage,tag=Center2_2C,scores={Global=2}] remove Center2_2_1
tag @e[tag=!Barrage,tag=Center2_2C,scores={Global=2}] add Straight0.5
tag @e[tag=!Barrage,tag=Center2_2C,scores={Global=2}] add Barrage

execute if score $Trap Global matches 36 run kill @e[tag=P1]
execute if score $Trap Global matches 2..16 as @e[tag=P1] at @s run teleport @s ^ ^ ^-2.5
execute if score $Trap Global matches 20..34 as @e[tag=P1] at @s run teleport @s ^ ^ ^2.5
execute positioned as @e[tag=P1] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center2_2C", "Center2_2_1", "Position-0.535_0.54", "Arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute positioned as @e[tag=P1] run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center2_2D", "Center2_2_1", "Position-0.535_0.54", "Arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
execute at @e[tag=Center2_2A] rotated ~90 0 as @e[tag=Center2_2_1,distance=..3,sort=nearest,limit=4] unless score @s Global matches 1.. run teleport @s ^0.535 ^ ^-1 ~ 0
execute at @e[tag=Center2_2B] rotated ~-90 0 as @e[tag=Center2_2_1,distance=..3,sort=nearest,limit=4] unless score @s Global matches 1.. run teleport @s ^0.535 ^ ^-1 ~ 0