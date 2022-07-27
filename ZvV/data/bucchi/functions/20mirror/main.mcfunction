#体力
execute as @e[tag=fighter] store result score @s health run data get entity @s Health 100
#窒息
execute unless block 200 65 -207 minecraft:heavy_weighted_pressure_plate[power=0] run tag @e[tag=fighter,type=!minecraft:villager,x=200,y=65,z=-207,dx=0,dy=0,dz=0] add block
execute if entity @e[tag=block] run function bucchi:20mirror/trap/block
#ジャンプ
execute unless block 200 65 -193 minecraft:heavy_weighted_pressure_plate[power=0] run scoreboard players set @e[tag=fighter,type=!minecraft:villager,scores={jump=0},x=200,y=65,z=-193,dx=0,dy=0,dz=0] jump 2
#鏡
execute if block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] if entity @e[tag=activate] run tag @e[tag=activate] remove activate
execute unless block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] unless entity @e[tag=activate] run function bucchi:20mirror/trap/mirror/change
tag @e[tag=alive] remove alive
scoreboard players remove @e[tag=false,scores={obj=1..}] obj 1
execute as @e[tag=false] at @e[tag=true] if score @s id = @e[distance=0,limit=1] id run function bucchi:20mirror/trap/mirror/main
execute if entity @e[tag=false] run kill @e[tag=fighter,tag=!alive]
execute positioned as @e[tag=false] run particle minecraft:dust 0.2 1.0 1.0 1.0 ~ ~2 ~ 0 0 0 0 0
execute if entity @e[tag=false] positioned 200 66 -200 rotated as @e[tag=surface] positioned ^ ^ ^5 rotated as @e[tag=surface] positioned ^ ^ ^2.5 rotated as @e[tag=surface] positioned ^ ^ ^1.25 rotated as @e[tag=surface] positioned ^ ^ ^0.625 rotated as @e[tag=surface] positioned ^ ^ ^0.3125 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.5 0 0 1
#ジャンプ
execute unless block 200 65 -193 minecraft:heavy_weighted_pressure_plate[power=0] as @e[scores={jump=2}] positioned as @s run teleport @s ~ ~8 ~
execute unless block 200 65 -193 minecraft:heavy_weighted_pressure_plate[power=0] run scoreboard players set @e[scores={jump=2}] jump 1
execute as @e[scores={jump=1}] positioned as @s if entity @s[y=64.1,dy=0] unless entity @s[x=200,z=-193,dx=0,dz=0] run scoreboard players set @s jump 0
#水
execute if block 206 65 -194 minecraft:stone_pressure_plate[powered=true] run setblock 208 65 -192 minecraft:smooth_quartz_slab[waterlogged=true]
execute if block 206 65 -194 minecraft:stone_pressure_plate[powered=false] run setblock 208 65 -192 minecraft:smooth_quartz_slab
execute if block 194 65 -206 minecraft:stone_pressure_plate[powered=true] run setblock 192 65 -208 minecraft:smooth_quartz_slab[waterlogged=true]
execute if block 194 65 -206 minecraft:stone_pressure_plate[powered=false] run setblock 192 65 -208 minecraft:smooth_quartz_slab
#ディスペンサー
execute if block 193 65 -193 minecraft:birch_pressure_plate[powered=true] run fill 190 65 -194 194 65 -190 minecraft:redstone_block replace minecraft:stone
execute if block 193 65 -193 minecraft:birch_pressure_plate[powered=true] run fill 190 65 -194 194 65 -190 minecraft:stone replace minecraft:redstone_block
execute if block 207 65 -207 minecraft:birch_pressure_plate[powered=true] run fill 210 65 -206 206 65 -210 minecraft:redstone_block replace minecraft:stone
execute if block 207 65 -207 minecraft:birch_pressure_plate[powered=true] run fill 210 65 -206 206 65 -210 minecraft:stone replace minecraft:redstone_block
kill @e[type=minecraft:arrow,nbt={inGround: 1b}]
#カウント
execute store result score ゾンビ count if entity @e[type=minecraft:zombie,tag=true]
execute store result score 村人 count if entity @e[type=minecraft:villager,tag=true]

scoreboard players add $経過tick count 1