#> bucchi:22carry/stop
#
# 運搬ステージ
# 試合後の処理
#
# @private

# ステージを修復
    place template bucchi:22carry 186 62 -20


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global