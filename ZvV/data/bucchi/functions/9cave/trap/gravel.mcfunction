#> bucchi:9cave/trap/gravel
#
# 洞窟ステージ
# 砂利
#
# @private

# 範囲内にゾンビがいる場合，砂利が落下
    execute if entity @e[type=minecraft:zombie,x=90,y=63,z=190,dx=4,dy=1,dz=4] run fill 89 85 189 95 92 195 minecraft:gravel keep
# 感圧板を消去
    execute if entity @e[type=minecraft:zombie,x=90,y=63,z=190,dx=4,dy=1,dz=4] run setblock ~ ~2 ~ minecraft:air
# 範囲内の村人ワープ
    execute if entity @e[type=minecraft:zombie,x=90,y=63,z=190,dx=4,dy=1,dz=4] run teleport @e[type=minecraft:villager,x=90,y=63,z=190,dx=4,dy=1,dz=4] 100 65 190

# 村人ワープ
    teleport @e[type=minecraft:villager,x=91,y=63,z=191,dx=0,dy=0,dz=0] 100 65 190