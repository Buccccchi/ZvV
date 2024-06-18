#> bucchi:7rotation/trap/left
#
# 回転ステージ
# 左回転
#
# @input score $Rotation Global
#   ステージの回転状態
# @within function bucchi:7rotation/trap/rotation

# ステージ回転
    # 回転状態を更新
        scoreboard players remove $Rotation Global 1
        execute if score $Rotation Global matches -1 run scoreboard players set $Rotation Global 3
    # 回転状態に応じてステージを設置
        execute if score $Rotation Global matches 0 run place template bucchi:7rotation 111 63 -11 clockwise_90
        execute if score $Rotation Global matches 1 run place template bucchi:7rotation 111 63 11 180
        execute if score $Rotation Global matches 2 run place template bucchi:7rotation 89 63 11 counterclockwise_90
        execute if score $Rotation Global matches 3 run place template bucchi:7rotation 89 63 -11

# 炎回転
    # 炎回転用エンティティをexecute幾何学で90度回転
        execute as @e[tag=Fire] positioned as @s positioned ~ 1065 ~ facing 100 65 0 positioned ^ ^ ^1000 rotated ~90 ~ positioned ^ ^ ^1000 positioned ~ 65 ~ align xz run teleport @s ~0.5 ~ ~0.5
    # 移動先に炎設置
        execute positioned as @e[tag=RedFire ] run setblock ~ ~ ~ minecraft:fire
        execute positioned as @e[tag=BlueFire] run setblock ~ ~ ~ minecraft:soul_fire