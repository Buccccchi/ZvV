#> bucchi:2nether/start
#
# ネザーステージ
# 試合開始
#
# @private

# プレイヤーをスペクテイターモードに変更
    gamemode spectator @a

# タイトル表示
    title @a times 10 30 20
    title @a subtitle {"text": "ネザーステージ", "italic": true}
    title @a title {"text": "試合開始", "color": "yellow", "bold": true}

# メイン処理を開始
    setblock -100 66 86 minecraft:redstone_block

# ゲートを開放
    fill -88 69 98 -88 69 102 minecraft:netherrack
    fill -112 69 102 -112 69 98 minecraft:netherrack

# エフェクト付与
    effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 1 true