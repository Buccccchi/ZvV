#> bucchi:8factory/trap/burn
#
# 工場ステージ
# 燃焼
#
# @within function bucchi:8factory/main

# 見た目上，ゾンビは1tick早く移動させる

# 対象のゾンビにタグ Burn を付与
    execute if score $Burn Global matches 1 run tag @n[type=minecraft:zombie,y=65,distance=..1,nbt={Fire: -1s}] add Burn
    execute if score $Burn Global matches 1 run data modify entity @e[tag=Burn,limit=1] NoGravity set value 1b

# 上昇
    execute if score $Burn Global matches 2..16 as @e[tag=Grab] positioned as @s run teleport @s ~ ~0.2 ~
    execute if score $Burn Global matches 1..15 positioned as @e[tag=Core] run teleport @e[tag=Burn] ~ ~-2.1 ~
    execute if score $Burn Global matches 2 run data merge entity @e[tag=Hang,limit=1] {start_interpolation: 0, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 0.2f, 0.1f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.05f, -0.2f, -0.05f]}}

# 燃焼室に移動
    execute if score $Burn Global matches 17 if entity @e[tag=Core,x=91.6,y=70,z=91.5,dx=4.9,dy=0,dz=5] as @e[tag=X] positioned as @s run teleport @s ~-0.1 ~ ~
    execute if score $Burn Global matches 17 if entity @e[tag=Core,x=91.5,y=70,z=91.6,dx=5,dy=0,dz=4.9] as @e[tag=Z] positioned as @s run teleport @s ~ ~ ~-0.1
    execute if score $Burn Global matches 17 if entity @e[tag=Core,x=91.5,y=70.3,z=91.5,distance=..0.01] run scoreboard players set $Burn Global 18
    execute if score $Burn Global matches 16..17 positioned as @e[tag=Core,x=91.6,y=70,z=91.5,dx=4.9,dy=0,dz=5] run teleport @e[tag=Burn] ~-0.1 68 ~
    execute if score $Burn Global matches 16..17 positioned as @e[tag=Core,x=91.5,y=70,z=91.6,dx=5,dy=0,dz=4.9] run teleport @e[tag=Burn] ~ 68 ~-0.1

# 下降
    execute if score $Burn Global matches 19..33 as @e[tag=Grab] positioned as @s run teleport @s ~ ~-0.2 ~
    execute if score $Burn Global matches 18..32 positioned as @e[tag=Core] run teleport @e[tag=Burn] ~ ~-2.5 ~
    execute if score $Burn Global matches 19 run data merge entity @e[tag=Hang,limit=1] {start_interpolation: 0, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 3.2f, 0.1f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.05f, -3.2f, -0.05f]}}

# 燃焼
    execute if score $Burn Global matches 33..72 positioned as @e[tag=Core] run teleport @e[tag=Burn] ~ ~-2.3 ~
    execute if score $Burn Global matches 34..73 run data modify entity @e[tag=Burn,limit=1] Fire set value 200s
    execute if score $Burn Global matches 34..73 as @e[type=minecraft:zombie,x=92.0,y=65,z=92.0,dx=0,dy=1,dz=0] run damage @s 2.0
    execute if score $Burn Global matches 34..73 as @e[type=minecraft:zombie,x=96.0,y=65,z=92.0,dx=0,dy=1,dz=0] run damage @s 2.0
    execute if score $Burn Global matches 34..73 as @e[type=minecraft:zombie,x=92.0,y=65,z=96.0,dx=0,dy=1,dz=0] run damage @s 2.0
    execute if score $Burn Global matches 34..73 as @e[type=minecraft:zombie,x=96.0,y=65,z=96.0,dx=0,dy=1,dz=0] run damage @s 2.0
    # 演出
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 90 65.4 91.9 0 0 -1 0.5 0 force
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 91.0 65.2 91.0 0.5 0 0.5 0 1 force
        execute if score $Burn Global matches 34..73 run particle minecraft:smoke 91.0 65.2 91.0 0.5 0 0.5 0 10 force
        execute if score $Burn Global matches 34..73 run particle minecraft:flame 91.0 66 91.0 0.5 0.5 0.5 0 5 force
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 92 65 92 0 0.5 0 0.5 0 force
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 96 65 92 0 0.5 0 0.5 0 force
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 92 65 96 0 0.5 0 0.5 0 force
        execute if score $Burn Global matches 34..73 run particle minecraft:campfire_cosy_smoke 96 65 96 0 0.5 0 0.5 0 force
        execute if score $Burn Global matches 34..73 run playsound minecraft:entity.blaze.shoot master @a 90 65 92 1.8 0.5

# 上昇
    execute if score $Burn Global matches 74..88 as @e[tag=Grab] positioned as @s run teleport @s ~ ~0.2 ~
    execute if score $Burn Global matches 73..87 positioned as @e[tag=Core] run teleport @e[tag=Burn] ~ ~-2.1 ~
    execute if score $Burn Global matches 74 run data merge entity @e[tag=Hang,limit=1] {start_interpolation: 0, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 0.2f, 0.1f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.05f, -0.2f, -0.05f]}}

# 中央に移動
    execute if score $Burn Global matches 88..117 as @e[tag=Burn] positioned as @e[tag=Core] run teleport @e[tag=Burn] ~0.1 68 ~0.1
    execute if score $Burn Global matches 89..118 as @e[tag=X] positioned as @s run teleport @s ~0.1 ~ ~
    execute if score $Burn Global matches 89..118 as @e[tag=Z] positioned as @s run teleport @s ~ ~ ~0.1

# 下降
    execute if score $Burn Global matches 119..133 as @e[tag=Grab] positioned as @s run teleport @s ~ ~-0.2 ~
    execute if score $Burn Global matches 118..132 positioned as @e[tag=Core] run teleport @e[tag=Burn] ~ ~-2.5 ~
    execute if score $Burn Global matches 119 run data merge entity @e[tag=Hang,limit=1] {start_interpolation: 0, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 3.2f, 0.1f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.05f, -3.2f, -0.05f]}}

# 終了
    execute if score $Burn Global matches 134 run data modify entity @e[tag=Burn,limit=1] NoGravity set value 0b
    execute if score $Burn Global matches 134 run tag @e[tag=Burn] remove Burn
    execute if score $Burn Global matches 134 run scoreboard players set $Burn Global 0

# スコアを加算
    execute if score $Burn Global matches 1..16 run scoreboard players add $Burn Global 1
    execute if score $Burn Global matches 18.. run scoreboard players add $Burn Global 1