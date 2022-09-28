execute store success score $time obj run scoreboard players add $trap obj 1
#縦
execute if score $trap obj matches 36 run kill @e[tag=P2]
spreadplayers 0 -200 0 12 false @e[tag=P2]
execute if score $trap obj matches 1..35 run loot replace block 0 16 0 container.0 loot bucchi:random/120
execute store result entity @e[limit=1,tag=top] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute if score $trap obj matches 1..35 run loot replace block 0 16 0 container.0 loot bucchi:random/120
execute store result entity @e[limit=1,tag=bottom] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute positioned as @e[tag=top] run summon minecraft:armor_stand ~ 62 -187 {Tags: ["center2_2E", "center2_2_2", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:lapis_block", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute positioned as @e[tag=bottom] run summon minecraft:armor_stand ~ 62 -213 {Tags: ["center2_2F", "center2_2_2", "position0_0", "small_block"], ArmorItems: [{}, {}, {}, {id: "minecraft:redstone_block", Count: 1b}], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!barrage,tag=center2_2E] unless score @s obj matches 1.. positioned as @s rotated as @e[tag=top] run teleport @s ~ 65.5 ~ ~120 0
execute as @e[tag=!barrage,tag=center2_2F] unless score @s obj matches 1.. positioned as @s rotated as @e[tag=bottom] run teleport @s ~ 65.5 ~ ~-60 0
#横
execute store success score $trapA obj unless score $trapA obj matches 1
execute if score $trap obj matches 2..36 if score $trapA obj matches 1 positioned as @e[tag=P1] run particle minecraft:flame ~ 65.5 ~ 0.3 0.3 0.3 0 30 force
execute if score $trapA obj matches 1 run function bucchi:18barrage/trap/center/level2/left/1_112