#> bucchi:9cave/trap/gravel_sink
#
# 洞窟ステージ
# 砂利沈下
#
# @within function bucchi:9cave/main

# 砂利沈下
    fill 90 60 190 96 63 196 minecraft:air replace minecraft:gravel
    fill 90 64 192 90 65 192 minecraft:air
    setblock 92 66 190 minecraft:air

# 感圧板上のMobをワープ
    teleport @e[x=91,y=68,z=191,dx=0,dy=0,dz=0] 96 65 196

# 砂利沈下を無効化
    data modify storage minecraft:global GravelSink set value 0b