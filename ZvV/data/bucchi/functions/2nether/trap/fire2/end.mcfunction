#> bucchi:2nether/trap/fire2/end
#
# 発火終了（右）
#
# @within function bucchi:2nether/trap/fire2/start

# 感圧板を再設置
    setblock -106 64 94 minecraft:heavy_weighted_pressure_plate

# タグ Fire と Fire2 を消去
    tag @e[tag=Fire2] remove Fire
    tag @e[tag=Fire2] remove Fire2