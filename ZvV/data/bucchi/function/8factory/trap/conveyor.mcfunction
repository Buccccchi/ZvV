#> bucchi:8factory/trap/conveyor
#
# 工場ステージ
# ベルトコンベアの動作
#
# @private

# カウント
    execute if block 100 66 85 minecraft:redstone_block run scoreboard players add $Conveyor Global 1
    execute if score $Conveyor Global matches 10 run scoreboard players set $Conveyor Global 0

# displayエンティティ召喚
    execute if score $Conveyor Global matches 1 run summon minecraft:item_display 100 65 89 {Tags: ["Conveyor"], teleport_duration: 1, item: {id: "minecraft:gray_concrete", count: 1b}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.1f, 0.8f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
    execute if score $Conveyor Global matches 1 run summon minecraft:item_display 87 65 106.0 {Tags: ["Conveyor", "ConvX"], teleport_duration: 1, interpolation_duration: 8, item: {id: "minecraft:gray_concrete", count: 1b}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.1f, 0.8f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, Rotation: [-90.0f, 0.0f]}
    execute if score $Conveyor Global matches 1 run summon minecraft:item_display 113 65 106.0 {Tags: ["Conveyor", "ConvX"], teleport_duration: 1, interpolation_duration: 8, item: {id: "minecraft:gray_concrete", count: 1b}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.1f, 0.8f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, Rotation: [90.0f, 0.0f]}

# ベルトコンベアを下に曲げる
    scoreboard players add @e[tag=ConvX,tag=!Conveyor] Global 1
    kill @e[tag=ConvX,scores={Global=9}]
    scoreboard players add @e[tag=ConvY,tag=!Conveyor] Global 1
    execute as @e[tag=ConvY,scores={Global=1}] run data merge entity @s {start_interpolation: -1, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.1f, 0.8f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
    tag @e[tag=ConvY,scores={Global=8}] add Conveyor
    execute as @e[tag=Conveyor,tag=ConvX] at @s if block ^ ^-1.5 ^0.45 minecraft:lava run summon minecraft:item_display ^ ^-0.4 ^0.4 {Tags: ["ConvY"], teleport_duration: 1, interpolation_duration: 8, item: {id: "minecraft:gray_concrete", count: 1b}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.1f, 0.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, -0.4f]}, Rotation: [90.0f, 90.0f]}
    execute as @e[tag=Conveyor,tag=ConvX] at @s if block ^ ^-1.5 ^0.45 minecraft:lava run data merge entity @s {start_interpolation: 0, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.1f, 0.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.4f]}}
    execute as @e[tag=Conveyor,tag=ConvX] at @s if block ^ ^-1.5 ^0.45 minecraft:lava run tag @s remove Conveyor

# ベルトコンベアを移動
    execute as @e[tag=Conveyor] at @s run teleport @s ^ ^ ^0.1

# ベルトコンベアを消去
    kill @e[tag=Conveyor,x=100.5,y=65,z=98.5,distance=..0.1]
    kill @e[tag=Conveyor,x=97,y=62,z=105,dx=6,dy=0,dz=1]

# ベルトコンベア上のモノを移動
    execute as @e[type=minecraft:chest_minecart] positioned as @s if block ~-0.5 ~-0.1 ~ minecraft:chain_command_block[facing=east] run teleport @s ~0.1 ~ ~
    execute as @e[type=minecraft:chest_minecart] positioned as @s if block ~0.5 ~-0.1 ~ minecraft:chain_command_block[facing=west] run teleport @s ~-0.1 ~ ~
    execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=south] run data modify entity @s Motion[2] set value 0.1d
    execute as @e[type=minecraft:zombie] positioned as @s if block ~-0.3 ~-0.1 ~ minecraft:chain_command_block[facing=east] run data modify entity @s Motion[0] set value 0.06d
    execute as @e[type=minecraft:zombie] positioned as @s if block ~0.3 ~-0.1 ~ minecraft:chain_command_block[facing=west] run data modify entity @s Motion[0] set value -0.06d
    # 荷物浮上
        execute as @e[type=minecraft:chest_minecart] positioned as @s unless block ~ 64 ~ minecraft:chain_command_block run teleport @s ~ ~0.2 ~
        execute as @e[type=minecraft:chest_minecart] positioned as @s if block ~ ~ ~ minecraft:iron_block run kill @s