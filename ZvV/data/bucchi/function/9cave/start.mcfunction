#> bucchi:9cave/start
#
# 洞窟ステージ
# 試合開始
#
# @private

# プレイヤーをスペクテイターモードに変更
    gamemode spectator @a

# タイトル表示
    title @a times 10 30 20
    title @a subtitle {"text": "洞窟ステージ", "italic": true}
    title @a title {"text": "試合開始", "color": "yellow", "bold": true}

# メイン処理を開始
    setblock 100 66 186 minecraft:redstone_block

# ゲートを開放
    fill 112 69 198 112 69 202 minecraft:stone
    fill 88 69 198 88 69 202 minecraft:stone

# エフェクト付与
    effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 1 true