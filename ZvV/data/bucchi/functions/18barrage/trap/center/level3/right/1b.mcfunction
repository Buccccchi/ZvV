loot replace block 0 16 0 container.0 loot bucchi:random/360
execute store result entity @s Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
loot replace block 0 16 0 container.0 loot bucchi:random/45
execute store result entity @s Rotation[1] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute at @s run teleport @s ~ ~ ~ ~ ~-85

execute positioned 0.0 0 0.0 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^2 {Tags:["motion"],Duration:2147483647,Radius:0f}
execute store result entity @s Motion[0] double 0.01 run data get entity @e[limit=1,tag=motion] Pos[0] 100
execute store result entity @s Motion[1] double 0.01 run data get entity @e[limit=1,tag=motion] Pos[1] 100
execute store result entity @s Motion[2] double 0.01 run data get entity @e[limit=1,tag=motion] Pos[2] 100
kill @e[tag=motion]