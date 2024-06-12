#> bucchi:3countdown/start
#
# カウントダウンステージ
# 試合開始
#
# @private

# プレイヤーをスペクテイターモードに変更
    gamemode spectator @a

# タイトル表示
    title @a times 10 30 20
    title @a subtitle {"text": "カウントダウンステージ", "italic": true}
    title @a title {"text": "試合開始", "color": "yellow", "bold": true}

# メイン処理を開始
    setblock -100 66 -14 minecraft:redstone_block

# ゲートを開放
    fill -88 69 -2 -88 69 2 minecraft:black_concrete
    fill -112 69 -2 -112 69 2 minecraft:black_concrete

# エフェクト付与
    effect give @e[type=minecraft:zombie,tag=!DontKill] minecraft:speed infinite 1 true