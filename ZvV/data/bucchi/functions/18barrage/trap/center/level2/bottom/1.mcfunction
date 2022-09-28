scoreboard players set $time obj 4
loot replace block 0 16 0 container.0 loot bucchi:random/360
execute store result entity @e[limit=1,tag=O1] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~180 0
execute positioned 0 62 -200 rotated as @e[limit=2,tag=axis2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags: ["P", "center"], Duration: 2147483647, Radius: 0f}
execute as @e[tag=P] positioned as @s facing 0 62 -200 run teleport @s ~ ~ ~ ~180 0
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} run tag @e[tag=P] add right