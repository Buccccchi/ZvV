#> bucchi:standby
#
# ゾンビと村人の召喚時の共通処理
#
# @input score $Standby Global
#   ゾンビと村人の召喚数
# @public

# 召喚場所を1マスずらす
    execute as @e[tag=Standby] at @s run teleport @s ^ ^ ^1
# 端で折り返す
    execute as @e[tag=Standby] at @s unless block ~ ~ ~ minecraft:air run teleport @s ^ ^ ^-1 ~180 0
# 残る召喚数が0になれば終了
    scoreboard players remove $Standby Global 1
    execute if score $Standby Global matches 0 run kill @e[tag=Standby]