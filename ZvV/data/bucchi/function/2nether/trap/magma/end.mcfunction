#> bucchi:2nether/trap/magma/end
#
# ネザーステージ
# マグマブロック融解終了
#
# @within function bucchi:2nether/trap/magma/start

# 溶岩をマグマブロックに置き換え
    fill -102 64 90 -98 64 94 minecraft:magma_block replace minecraft:lava

# 感圧板を再設置
    setblock -100 65 92 minecraft:light_weighted_pressure_plate