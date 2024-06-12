#> bucchi:1survival/main
#
# サバイバルステージ
# 試合後の処理
#
# @private

# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 12 69 98 12 69 102 minecraft:redstone_block
        fill -12 69 98 -12 69 102 minecraft:redstone_block