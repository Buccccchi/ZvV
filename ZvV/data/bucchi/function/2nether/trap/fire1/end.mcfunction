#> bucchi:2nether/trap/fire1/end
#
# ネザーステージ
# 発火終了（左）
#
# @within function bucchi:2nether/trap/fire1/start

# 感圧板を再設置
    setblock -94 64 94 minecraft:heavy_weighted_pressure_plate

# タグ Fire と Fire1 を消去
    tag @e[tag=Fire1] remove Fire
    tag @e[tag=Fire1] remove Fire1