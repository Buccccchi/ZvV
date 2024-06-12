#> bucchi:3countdown/standby
#
# カウントダウンステージ
# 試合準備
#
# @private

# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 10
    # 召喚場所用マーカー
        summon minecraft:marker -82 68 -2 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker -118 68 -2 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:3countdown/summon