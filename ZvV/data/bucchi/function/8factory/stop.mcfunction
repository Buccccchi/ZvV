#> bucchi:8factory/stop
#
# 工場ステージ
# 試合後の処理
#
# @private

# ベルトコンベア停止
    setblock 100 66 85 minecraft:stone

# ステージを修復
    setblock 100 63 105 minecraft:command_block{Command: "/fill 100 65 106 100 65 105 minecraft:powered_rail"}
    fill 99 64 104 101 64 107 minecraft:redstone_lamp
    fill 98 64 103 102 64 108 minecraft:iron_block keep
    fill 99 67 111 101 67 111 minecraft:redstone_lamp
    fill 100 65 106 100 65 110 minecraft:rail
    setblock 100 65 105 minecraft:detector_rail
    execute if block 100 66 100 minecraft:air run setblock 100 66 100 minecraft:polished_blackstone_pressure_plate
    fill 102 65 102 98 65 102 minecraft:chiseled_tuff_bricks
    fill 101 65 102 99 65 102 minecraft:smooth_stone_slab
    fill 99 67 112 101 67 112 minecraft:stone


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 112 69 98 112 69 102 minecraft:redstone_block
        fill 88 69 98 88 69 102 minecraft:redstone_block