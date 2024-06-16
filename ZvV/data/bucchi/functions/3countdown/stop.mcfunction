#> bucchi:3countdown/stop
#
# カウントダウンステージ
# 試合後の処理
#
# @private

# ステージを修復
    clone -110 58 -10 -90 59 10 -110 64 -10

# 落雷を閉鎖
    fill -101 67 11 -99 69 11 minecraft:black_concrete


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill -88 69 -2 -88 69 2 minecraft:redstone_block
        fill -112 69 -2 -112 69 2 minecraft:redstone_block