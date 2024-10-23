#> bucchi:9cave/trap/gravel_fall
#
# 洞窟ステージ
# 砂利落下
#
# @private

# 範囲内にゾンビがいる場合

# 砂利落下
    clone 90 86 190 96 89 196 90 81 190
# コマブロを消去
    setblock ~ ~ ~ minecraft:gravel
# 感圧板を消去
    setblock ~ ~2 ~ minecraft:air

# 範囲内の村人をワープ
    execute as @e[type=minecraft:villager,x=90,y=64,z=190,dx=6,dy=1,dz=6] positioned as @s if block ~ 63 ~ minecraft:gravel run teleport @s 96 65 196

# 砂利沈下を有効化
    data modify storage minecraft:global GravelSink set value 1b