#> bucchi:1survival/start
#
# サバイバルステージ
# 試合開始
#
# @private

# プレイヤーをスペクテイターモードに変更
    gamemode spectator @a

# タイトル表示
    title @a times 10 30 20
    title @a subtitle {"text": "サバイバルステージ", "italic": true}
    title @a title {"text": "試合開始", "color": "yellow", "bold": true}

# メイン処理を開始
    setblock 0 66 86 minecraft:redstone_block

# ゲートを開放
    fill 12 69 98 12 69 102 minecraft:dirt
    fill -12 69 98 -12 69 102 minecraft:dirt

# エフェクト付与
    effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 0 true