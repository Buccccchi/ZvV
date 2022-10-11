scoreboard players add $Trap Global 1
execute if score $Trap Global matches 1..6 store success score $TrapA Global unless score $TrapA Global matches 1
execute if score $Trap Global matches 3..23 run scoreboard players add @e[tag=Center3_2D,tag=!Change] Global 1
execute if score $TrapA Global matches 1 run function bucchi:18barrage/trap/center/level3/left/52b
execute if score $Trap Global matches 2..19 as @e[tag=Center3_2C] run function bucchi:18barrage/trap/center/level3/left/52d
execute if score $Trap Global matches 6..23 as @e[tag=Center3_2D,tag=!Change,scores={Global=4}] run function bucchi:18barrage/trap/center/level3/left/52e