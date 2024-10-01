#> bucchi:8factory/trap/cutter
#
# 工場ステージ
# 切断機
#
# @within function bucchi:8factory/main

# ゾンビがいなければ位置を戻して終了
    execute unless entity @e[type=minecraft:zombie,dx=0,dy=1,dz=0] run data merge entity @s {start_interpolation: -1, interpolation_duration: 2, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    execute unless entity @e[type=minecraft:zombie,dx=0,dy=1,dz=0] run tag @s remove Cutting

# ゾンビにダメージ
    execute as @e[type=minecraft:zombie,dx=0,dy=1,dz=0] run damage @s 4.0