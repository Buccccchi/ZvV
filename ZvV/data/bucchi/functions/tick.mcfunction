#> bucchi:tick
#
# tick時に実行される処理
#
# @within tag/function minecraft:tick

# ゾンビと村人の数をカウント
    execute unless entity @a[tag=StopCount] store result score ゾンビ Count if entity @e[type=minecraft:zombie,tag=!DontKill]
    execute unless entity @a[tag=StopCount] store result score 村人 Count if entity @e[type=minecraft:villager,tag=!DontKill]

# プレイヤーに常に暗視エフェクトを付与
    effect give @a[nbt=!{active_effects: [{id: "minecraft:night_vision"}]}] minecraft:night_vision infinite 0 true

# プレイヤーにタグ DontKill を付与
    tag @a[tag=!DontKill] add DontKill

# ステージ説明用
    #function bucchi:describe/main