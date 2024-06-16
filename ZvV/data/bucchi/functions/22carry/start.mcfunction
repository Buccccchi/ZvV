#> bucchi:22carry/start
#
# 運搬ステージ
# 試合開始
#
# @private

# プレイヤーをスペクテイターモードに変更
    gamemode spectator @a

# タイトル表示
    title @a times 10 30 20
    title @a subtitle {"text": "運搬ステージ", "italic": true}
    title @a title {"text": "試合開始", "color": "yellow", "bold": true}

# メイン処理を開始
    setblock 200 66 -17 minecraft:redstone_block

# ゲートを開放
    fill 214 69 -1 214 69 1 minecraft:birch_fence_gate[facing=west,open=true]
    fill 186 69 -1 186 69 1 minecraft:birch_fence_gate[facing=east,open=true]

# エフェクト付与
    effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 0 true