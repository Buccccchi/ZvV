#> bucchi:2nether/trap/fire1/start
#
# ネザーステージ
# 発火開始（左）
#
# @private

# 感圧板を消去
    setblock ~ ~2 ~ minecraft:air

# 範囲内のゾンビにタグ Fire1 と Fire を付与
    execute positioned ~-1 ~1.5 ~-1 run tag @e[type=minecraft:zombie,dx=1,dy=0,dz=1] add Fire1
    tag @e[tag=Fire1] add Fire

# 発火終了をスケジュール
    schedule function bucchi:2nether/trap/fire1/end 3s append