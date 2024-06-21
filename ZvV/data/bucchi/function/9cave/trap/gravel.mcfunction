#> bucchi:9cave/trap/gravel
#
# 洞窟ステージ
# 砂利
#
# @private

# 範囲内にゾンビがいる場合
    # 砂利が落下
        execute if entity @e[type=minecraft:zombie,x=90,y=64,z=190,dx=4,dy=0,dz=4] run clone 90 86 190 94 92 194 90 78 190
    # 感圧板を消去
        execute if entity @e[type=minecraft:zombie,x=90,y=64,z=190,dx=4,dy=0,dz=4] run setblock ~ ~2 ~ minecraft:air
    # 範囲内の村人ワープ
        execute if entity @e[type=minecraft:zombie,x=90,y=64,z=190,dx=4,dy=0,dz=4] run teleport @e[type=minecraft:villager,x=90,y=64,z=190,dx=4,dy=0,dz=4] 100 65 190