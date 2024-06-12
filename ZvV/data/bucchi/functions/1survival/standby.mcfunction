#> bucchi:1survival/standby
#
# サバイバルステージ
# 試合準備
#
# @private


# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 10
    # 召喚場所用マーカー
        summon minecraft:marker 18 68 98 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker -18 68 98 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:1survival/summon