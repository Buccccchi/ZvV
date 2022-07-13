execute unless score ゾンビ count matches 0 if score 村人 count matches 0 run scoreboard players add $ゾンビ勝 count 1
execute unless score 村人 count matches 0 if score ゾンビ count matches 0 run scoreboard players add $村人勝 count 1
execute if score ゾンビ count matches 0 if score 村人 count matches 0 run scoreboard players add $引き分け count 1
function bucchi:19park/stop
schedule function bucchi:19park/stop 1s append
schedule function bucchi:19park/standby 2s append
schedule function bucchi:19park/start 10s append