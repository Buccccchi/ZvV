#> bucchi:8factory/standby
#
# 工場ステージ
# 試合準備
#
# @private

summon minecraft:marker 88 66 105 {Tags: ["Trap1"]}
summon minecraft:marker 88 66 106 {Tags: ["Trap1"]}
summon minecraft:marker 112 66 105 {Tags: ["Trap2"]}
summon minecraft:marker 112 66 106 {Tags: ["Trap2"]}


# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 20
    # 召喚場所用マーカー
        summon minecraft:marker 118 68 98 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker 82 68 98 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:8factory/summon