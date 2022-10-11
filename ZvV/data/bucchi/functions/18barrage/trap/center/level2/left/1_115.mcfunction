execute store success score $Time Global run scoreboard players add $Trap Global 1
# 縦
execute if score $Trap Global matches 36 run kill @e[tag=P2]
spreadplayers 0 -200 0 12 false @e[tag=P2]
scoreboard players set $RandMax Global 120
execute if score $Trap Global matches 1..35 store result entity @e[tag=Top,limit=1] Rotation[0] float 1 run function bucchi:random
execute if score $Trap Global matches 1..35 store result entity @e[tag=Bottom,limit=1] Rotation[0] float 1 run function bucchi:random
execute positioned as @e[tag=Top] run summon minecraft:armor_stand ~ 62 -187 {Tags: ["Center2_2E", "Center2_2_2", "Position0_0", "SmallBlock"], ArmorItems: [{}, {}, {}, {id: "minecraft:lapis_block", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=Bottom] run summon minecraft:armor_stand ~ 62 -213 {Tags: ["Center2_2F", "Center2_2_2", "Position0_0", "SmallBlock"], ArmorItems: [{}, {}, {}, {id: "minecraft:redstone_block", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!Barrage,tag=Center2_2E] unless score @s Global matches 1.. positioned as @s rotated as @e[tag=Top] run teleport @s ~ 65.5 ~ ~120 0
execute as @e[tag=!Barrage,tag=Center2_2F] unless score @s Global matches 1.. positioned as @s rotated as @e[tag=Bottom] run teleport @s ~ 65.5 ~ ~-60 0
# 横
execute store success score $TrapA Global unless score $TrapA Global matches 1
execute if score $Trap Global matches 2..36 if score $TrapA Global matches 1 positioned as @e[tag=P1] run particle minecraft:flame ~ 65.5 ~ 0.3 0.3 0.3 0 30 force
execute if score $TrapA Global matches 1 run function bucchi:18barrage/trap/center/level2/left/1_112