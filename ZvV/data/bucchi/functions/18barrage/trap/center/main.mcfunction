execute unless score $time obj matches 1.. run function bucchi:18barrage/trap/center/first
scoreboard players add $time obj 1
execute if score $level obj matches 1 run function bucchi:18barrage/trap/center/level1/trap
execute if score $level obj matches 2 run function bucchi:18barrage/trap/center/level2/trap
execute if score $level obj matches 3 run function bucchi:18barrage/trap/center/level3/trap