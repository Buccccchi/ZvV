#> bucchi:8factory/stop
#
# 工場ステージ
# 試合後の処理
#
# @private

# 金床を消去
    fill 90 65 109 110 69 110 minecraft:air replace #minecraft:anvil

# ステージを修復
    setblock 100 63 105 minecraft:command_block{Command: "/function bucchi:8factory/trap/stopper"}
    fill 99 64 104 101 64 107 minecraft:redstone_lamp
    fill 98 64 103 102 64 108 minecraft:iron_block keep
    fill 99 67 111 101 67 111 minecraft:redstone_lamp
    fill 100 65 106 100 65 110 minecraft:rail
    setblock 100 65 105 minecraft:detector_rail
    setblock 100 65 100 minecraft:stone_pressure_plate
    fill 99 67 112 101 67 112 minecraft:stone


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 112 69 98 112 69 102 minecraft:redstone_block
        fill 88 69 98 88 69 102 minecraft:redstone_block