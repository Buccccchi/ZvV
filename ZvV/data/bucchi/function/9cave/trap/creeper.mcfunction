#> bucchi:9cave/trap/creeper
#
# 洞窟ステージ
# クリーパー
#
# @private

# 土が壊れていない，かつクリーパーがいない場合

# クリーパー召喚
    summon minecraft:creeper 100 64 200 {Tags: ["Creeper"], ignited: 1b, NoAI: 1b, Rotation: [180.0f, 0.0f]}

# パーティクル
    particle minecraft:large_smoke 100 64.5 200 0.4 0.5 0.4 0 40 force