#奈落
kill @e[tag=!dontkill,x=50,y=-16,z=-250,dx=100,dy=16,dz=100]
#体力
execute as @e[tag=fighter] store result score @s health run data get entity @s Health 100
#鏡
execute if block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] if entity @e[tag=activate] run tag @e[tag=activate] remove activate
execute unless block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] unless entity @e[tag=activate] run function bucchi:20mirror/trap/mirror/change
tag @e[tag=alive] remove alive
scoreboard players remove @e[tag=false,scores={obj=1..}] obj 1
execute as @e[tag=false] at @e[tag=true] if score @s id = @e[distance=0,limit=1] id run function bucchi:20mirror/trap/mirror/main
execute if entity @e[tag=false] run kill @e[tag=fighter,tag=!alive]
execute positioned as @e[tag=false] run particle minecraft:entity_effect ~ ~2 ~ 0 0 0 0 0
execute if entity @e[tag=false] positioned 200 66 -200 rotated as @e[tag=surface] positioned ^ ^ ^5 rotated as @e[tag=surface] positioned ^ ^ ^2.5 rotated as @e[tag=surface] positioned ^ ^ ^1.25 rotated as @e[tag=surface] positioned ^ ^ ^0.625 rotated as @e[tag=surface] positioned ^ ^ ^0.3125 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.5 0 0 1
#水
execute if block 206 65 -194 minecraft:birch_pressure_plate[powered=true] run setblock 208 65 -192 minecraft:smooth_quartz_slab[waterlogged=true]
execute if block 206 65 -194 minecraft:birch_pressure_plate[powered=false] run setblock 208 65 -192 minecraft:smooth_quartz_slab
execute if block 194 65 -206 minecraft:birch_pressure_plate[powered=true] run setblock 192 65 -208 minecraft:smooth_quartz_slab[waterlogged=true]
execute if block 194 65 -206 minecraft:birch_pressure_plate[powered=false] run setblock 192 65 -208 minecraft:smooth_quartz_slab
#窒息
execute unless block 200 65 -206 minecraft:heavy_weighted_pressure_plate[power=0] run tag @e[tag=fighter,x=200,y=65,z=-206,dx=0,dy=0,dz=0,type=!minecraft:villager] add block
execute unless block 200 65 -194 minecraft:heavy_weighted_pressure_plate[power=0] run tag @e[tag=fighter,x=200,y=65,z=-194,dx=0,dy=0,dz=0,type=!minecraft:villager] add block
execute if entity @e[tag=block] run function bucchi:20mirror/trap/block
#ディスペンサー
execute if block 193 65 -193 minecraft:stone_pressure_plate[powered=true] run fill 191 65 -192 192 65 -191 minecraft:redstone_block replace minecraft:stone
execute if block 193 65 -193 minecraft:stone_pressure_plate[powered=true] run fill 191 65 -192 192 65 -191 minecraft:stone replace minecraft:redstone_block
execute if block 207 65 -207 minecraft:stone_pressure_plate[powered=true] run fill 209 65 -208 208 65 -209 minecraft:redstone_block replace minecraft:stone
execute if block 207 65 -207 minecraft:stone_pressure_plate[powered=true] run fill 209 65 -208 208 65 -209 minecraft:stone replace minecraft:redstone_block
#カウント
execute store result score ゾンビ count if entity @e[type=minecraft:zombie,tag=true]
execute store result score 村人 count if entity @e[type=minecraft:villager,tag=true]