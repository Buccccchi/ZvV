#> bucchi:22carry/standby
#
# 運搬ステージ
# 試合準備
#
# @private

# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 15
    # 召喚場所用マーカー
        summon minecraft:marker 221 69 -1 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker 179 69 -1 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:22carry/summon