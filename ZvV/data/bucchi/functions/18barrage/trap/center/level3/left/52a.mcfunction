scoreboard players add $trap obj 1
execute if score $trap obj matches 1..6 store success score $trapA obj unless score $trapA obj matches 1
execute if score $trap obj matches 3..23 run scoreboard players add @e[tag=center3_2D,tag=!change] obj 1
execute if score $trapA obj matches 1 run function bucchi:18barrage/trap/center/level3/left/52b
execute if score $trap obj matches 2..19 as @e[tag=center3_2C] run function bucchi:18barrage/trap/center/level3/left/52d
execute if score $trap obj matches 6..23 as @e[tag=center3_2D,tag=!change,scores={obj=4}] run function bucchi:18barrage/trap/center/level3/left/52e