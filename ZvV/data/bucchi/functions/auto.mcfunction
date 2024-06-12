#> bucchi:auto
#
# 自動バランス確認
#
# @input
#   score ゾンビ Count
#       ゾンビの残りの数
#   score 村人 Count
#       村人の残りの数
#   score $経過tick Count
#       試合時間(tick)
# @output
#   score $ゾンビ勝 Count
#       ゾンビの勝利数
#   score $村人勝 Count
#       村人の勝利数
#   score $引き分け Count
#       引き分けの回数
#   score $試合数 Count
#       試合の合計数
#   score $平均tick Count
#       試合時間の平均(tick)
#   score $平均秒数 Count
#       試合時間の平均(秒)
# @within function bucchi:end

# 勝敗を記録
    execute unless score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $ゾンビ勝 Count 1
    execute unless score 村人 Count matches 0 if score ゾンビ Count matches 0 run scoreboard players add $村人勝 Count 1
    execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $引き分け Count 1

# 試合時間の記録と平均の算出
    scoreboard players set #20 Count 20
    scoreboard players add $試合数 Count 1
    scoreboard players operation $経過tick Count -= $平均tick Count
    scoreboard players operation $経過tick Count /= $試合数 Count
    scoreboard players operation $平均tick Count += $経過tick Count
    scoreboard players operation $平均秒数 Count = $平均tick Count
    scoreboard players operation $平均秒数 Count /= #20 Count
    scoreboard players set $経過tick Count 0

# 次の試合を開始
    $function bucchi:$(stage)/stop
    $schedule function bucchi:$(stage)/stop 1s append
    $schedule function bucchi:$(stage)/standby 2s append
    $schedule function bucchi:$(stage)/start 10s append