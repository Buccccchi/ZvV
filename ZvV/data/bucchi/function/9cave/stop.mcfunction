#> bucchi:9cave/stop
#
# 洞窟ステージ
# 試合後の処理
#
# @private

# 暗視エフェクトを付与
    tag @a remove NoNV

# 中央の穴を修復
    fill 98 54 198 102 66 210 minecraft:air replace minecraft:water
    fill 98 63 198 102 63 202 minecraft:dirt keep
# 感圧板を再設置
    setblock 100 65 207 minecraft:light_weighted_pressure_plate

# 砂利を消去
    fill 90 63 190 94 69 194 minecraft:air replace minecraft:gravel
# 感圧板を再設置
    setblock 91 63 191 minecraft:heavy_weighted_pressure_plate

# 水流を封鎖
    setblock 102 63 210 minecraft:redstone_block


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 112 69 198 112 69 202 minecraft:redstone_block
        fill 88 69 198 88 69 202 minecraft:redstone_block