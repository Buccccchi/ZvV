#> bucchi:auto
#
# 自動バランス確認
#
# @input
#   score ゾンビ Count
#       ゾンビの残りの数
#   score 村人 Count
#       村人の残りの数
#   score $Tick Auto
#       試合時間(tick)
# @output
#   score $Zombie Auto
#       ゾンビの勝利数
#   score $Villager Auto
#       村人の勝利数
#   score $Draw Auto
#       引き分けの回数
#   score $AveSec Auto
#       試合時間の平均(秒)
# @within function bucchi:end

# 勝敗を記録
    execute unless score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $Zombie Auto 1
    execute unless score 村人 Count matches 0 if score ゾンビ Count matches 0 run scoreboard players add $Villager Auto 1
    execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $Draw Auto 1

# 試合時間の記録と平均の算出
    scoreboard players add $Count Auto 1
    scoreboard players operation $Tick Auto -= $AveTick Auto
    scoreboard players operation $Tick Auto /= $Count Auto
    scoreboard players operation $AveTick Auto += $Tick Auto
    scoreboard players operation $AveSec Auto = $AveTick Auto
    scoreboard players operation $AveSec Auto /= #20 Auto
    scoreboard players set $Tick Auto 0

# 次の試合を開始
    $function bucchi:$(stage)/stop
    $schedule function bucchi:$(stage)/stop 1s append
    $schedule function bucchi:$(stage)/standby 2s append
    $schedule function bucchi:$(stage)/start 10s append