loot replace block 0 16 0 container.0 loot bucchi:random/360
execute store result entity @e[limit=1,tag=O1] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~144 0
execute at @e[tag=O1] run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Tags: ["P1", "center"], Duration: 2147483647, Radius: 0f}
execute at @e[tag=O2] run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags: ["P2", "center"], Duration: 2147483647, Radius: 0f}
execute as @e[tag=center] positioned as @s run teleport @s ~ ~ ~ facing 0 62 -200