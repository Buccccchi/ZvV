execute unless score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $ゾンビ勝 Count 1
execute unless score 村人 Count matches 0 if score ゾンビ Count matches 0 run scoreboard players add $村人勝 Count 1
execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run scoreboard players add $引き分け Count 1
scoreboard players set #20 Count 20
scoreboard players add $試合数 Count 1
scoreboard players operation $経過tick Count -= $平均tick Count
scoreboard players operation $経過tick Count /= $試合数 Count
scoreboard players operation $平均tick Count += $経過tick Count
scoreboard players operation $平均秒数 Count = $平均tick Count
scoreboard players operation $平均秒数 Count /= #20 Count
scoreboard players set $経過tick Count 0
function bucchi:22carry/stop
schedule function bucchi:22carry/stop 1s append
schedule function bucchi:22carry/standby 2s append
schedule function bucchi:22carry/start 10s append