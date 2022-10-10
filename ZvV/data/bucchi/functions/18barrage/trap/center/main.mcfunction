execute unless score $Time Global matches 1.. run function bucchi:18barrage/trap/center/first
scoreboard players add $Time Global 1
execute if score $Level Global matches 1 run function bucchi:18barrage/trap/center/level1/trap
execute if score $Level Global matches 2 run function bucchi:18barrage/trap/center/level2/trap
execute if score $Level Global matches 3 run function bucchi:18barrage/trap/center/level3/trap