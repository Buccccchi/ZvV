#> bucchi:9cave/trap/dripstone
#
# 洞窟ステージ
# 鍾乳石
#
# @private

execute positioned as @n[type=minecraft:zombie,tag=!DontKill] run summon minecraft:falling_block ~ ~2 ~ {FallHurtAmount: 2.0f, FallHurtMax: 40, HurtEntities: 1b, BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "tip", vertical_direction: "down"}}}
execute positioned as @n[type=minecraft:zombie,tag=!DontKill] run summon minecraft:falling_block ~ ~3 ~ {BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "frustum", vertical_direction: "down"}}}
execute positioned as @n[type=minecraft:zombie,tag=!DontKill] run summon minecraft:falling_block ~ ~4 ~ {BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "base", vertical_direction: "down"}}}