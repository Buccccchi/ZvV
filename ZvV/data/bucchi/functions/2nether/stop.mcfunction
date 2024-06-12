#> bucchi:2nether/main
#
# ネザーステージ
# 試合後の処理
#
# @private

# ゲームルールを戻す
    gamerule doFireTick false

# 炎を消火
    fill -110 64 90 -90 70 110 minecraft:air replace #minecraft:fire

# 感圧板を再設置
    setblock -94 64 94 minecraft:heavy_weighted_pressure_plate
    setblock -106 64 94 minecraft:heavy_weighted_pressure_plate


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill -88 69 98 -88 69 102 minecraft:redstone_block
        fill -112 69 102 -112 69 98 minecraft:redstone_block