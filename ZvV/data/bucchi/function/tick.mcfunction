#> bucchi:tick
#
# tick時に実行される処理
#
# @within tag/function minecraft:tick

# ゾンビと村人の数をカウント
    execute unless entity @a[tag=StopCount] store result score ゾンビ Count if entity @e[type=minecraft:zombie,tag=!DontKill]
    execute unless entity @a[tag=StopCount] store result score 村人 Count if entity @e[type=minecraft:villager,tag=!DontKill]

#> 暗視エフェクトを付与しないタグ
# @public
    #declare tag NoNV
# プレイヤーに常に暗視エフェクトを付与
    effect give @a[tag=!NoNV,nbt=!{active_effects: [{id: "minecraft:night_vision"}]}] minecraft:night_vision infinite 0 true

#> 試合終了時にkillしないタグ
# @public
    #declare tag DontKill
# プレイヤーにタグ DontKill を付与
    tag @a[tag=!DontKill] add DontKill

# 自動バランス確認
    # 情報の表示
        execute if data storage minecraft:global {Auto: 1b} run title @a actionbar ["", {"text": "ゾンビ ", "bold": true, "color": "green"}, {"score": {"objective": "Auto", "name": "$Zombie"}, "color": "yellow"}, {"text": "-"}, {"score": {"objective": "Auto", "name": "$Draw"}, "color": "yellow"}, {"text": "-"}, {"score": {"objective": "Auto", "name": "$Villager"}, "color": "yellow"}, {"text": " 村人", "bold": true, "color": "gold"}, {"text": " | "}, {"text": "平均時間", "bold": true}, {"text": ": "}, {"score": {"objective": "Auto", "name": "$AveSec"}, "bold": false, "color": "yellow"}, {"text": "秒", "bold": true}, {"text": " | "}, {"text": "経過時間", "bold": true}, {"text": ": "}, {"score": {"objective": "Auto", "name": "$Tick"}}, {"text": "ticks"}]
    # 経過時間が10分を超えた場合，経過時間を平均として強制終了
        execute if data storage minecraft:global {Auto: 1b} if score $Tick Auto matches 12000.. run kill @e[tag=!DontKill]
        execute if data storage minecraft:global {Auto: 1b} if score $Tick Auto matches 12000.. run scoreboard players operation $Tick Auto = $AveTick Auto

# ステージ説明用
    #function bucchi:describe/main