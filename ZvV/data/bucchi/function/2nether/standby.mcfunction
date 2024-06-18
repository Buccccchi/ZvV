#> bucchi:2nether/standby
#
# ネザーステージ
# 試合準備
#
# @private

# ゲームルール変更
    gamerule doFireTick true

# 炎を設置
    setblock -110 65 91 minecraft:fire
    setblock -109 65 90 minecraft:fire
    setblock -90 65 91 minecraft:fire
    setblock -91 65 90 minecraft:fire
    setblock -90 69 110 minecraft:fire
    setblock -110 69 110 minecraft:fire


# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 10
    # 召喚場所用マーカー
        summon minecraft:marker -82 68 98 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker -118 68 98 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:2nether/summon