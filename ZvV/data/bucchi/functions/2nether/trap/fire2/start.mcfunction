#> bucchi:2nether/trap/fire2/start
#
# 発火開始（右）
#
# @private

# 感圧板を消去
    setblock ~ ~2 ~ minecraft:air

# 範囲内のゾンビにタグ Fire2 と Fire を付与
    execute positioned ~-1 ~1.5 ~-1 run tag @e[type=minecraft:zombie,dx=1,dy=0,dz=1] add Fire2
    tag @e[tag=Fire2] add Fire

# 発火終了をスケジュール
    schedule function bucchi:2nether/trap/fire2/end 3s append