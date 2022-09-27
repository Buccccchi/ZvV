loot replace block 0 16 0 container.0 loot bucchi:random/90
execute store result entity @e[limit=1,tag=O1] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~180 0
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 1b}]} run tag @e[tag=axis2] add right
execute positioned 0 60 -200 rotated as @e[limit=2, tag=axis2] rotated ~90 0 positioned ^ ^ ^2 rotated as @e[limit=2,tag=axis2] run summon minecraft:armor_stand ^ ^ ^2 {Tags: ["center1_3", "position0_0", "block"], ArmorItems: [{}, {}, {}, {id: "minecraft:red_concrete", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
execute as @e[tag=!barrage,tag=center1_3] positioned as @s facing 0 60 -200 run teleport @s ~ 62 ~ ~180 -88
scoreboard players set @e[tag=!barrage,tag=center1_3] obj 1