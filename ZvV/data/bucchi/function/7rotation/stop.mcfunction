#> bucchi:7rotation/stop
#
# 回転ステージ
# 試合後の処理
#
# @private

# ゲームルールを戻す
    gamerule doFireTick false

# ステージを修復
    fill 89 65 -11 111 65 11 minecraft:dispenser[facing=up] replace minecraft:dispenser
    place template bucchi:7rotation 89 63 -11
    fill 96 64 -4 95 64 -5 minecraft:lava

# 回転方向表示を消灯
    fill 99 68 12 101 68 12 minecraft:black_concrete


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 112 69 -2 112 69 2 minecraft:redstone_block
        fill 88 69 -2 88 69 2 minecraft:redstone_block