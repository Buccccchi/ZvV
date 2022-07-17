execute unless score ゾンビ count matches 0 if score 村人 count matches 0 run scoreboard players add $ゾンビ勝 count 1
execute unless score 村人 count matches 0 if score ゾンビ count matches 0 run scoreboard players add $村人勝 count 1
execute if score ゾンビ count matches 0 if score 村人 count matches 0 run scoreboard players add $引き分け count 1
scoreboard players set #20 count 20
scoreboard players add $試合数 count 1
scoreboard players operation $経過tick count -= $平均tick count
scoreboard players operation $経過tick count /= $試合数 count
scoreboard players operation $平均tick count += $経過tick count
scoreboard players operation $平均秒数 count = $平均tick count
scoreboard players operation $平均秒数 count /= #20 count
scoreboard players set $経過tick count 0
function bucchi:20mirror/stop
schedule function bucchi:20mirror/stop 1s append
schedule function bucchi:20mirror/standby 2s append
schedule function bucchi:20mirror/start 10s append