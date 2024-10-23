#> bucchi:9cave/standby
#
# 洞窟ステージ
# 試合準備
#
# @private

# 暗視エフェクトを除去
    effect clear @a minecraft:night_vision
    tag @a add NoNV

# ウーパールーパー召喚
    summon minecraft:axolotl 109 66 208
    summon minecraft:axolotl 107 66 209
    summon minecraft:axolotl 105 66 210
    tag @e[type=minecraft:axolotl] add Axolotl
    execute as @e[tag=Axolotl] run attribute @s minecraft:generic.follow_range base set 4.0


# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 15
    # 召喚場所用マーカー
        summon minecraft:marker 118 68 198 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker 82 68 198 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:9cave/summon