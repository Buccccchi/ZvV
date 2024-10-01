#> bucchi:8factory/trap/anvil_fall
#
# 工場ステージ
# 金床の落下
#
# @private

setblock 106 72 94 minecraft:anvil[facing=south]
kill @e[tag=Anvil,x=106,y=72,z=94,distance=..0.1]
summon minecraft:block_display 111.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}