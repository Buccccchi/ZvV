scoreboard players add @e[tag=!Barrage,tag=Center2_2_2] Global 1
execute as @e[tag=!Barrage,tag=Center2_2_2,scores={Global=9}] at @s run function bucchi:18barrage/trap/center/level2/left/10_114
execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level2/left/1
execute if score $Time Global matches 4 if score $Trap Global matches 5..39 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $Time Global matches 4 unless score $Trap Global matches 39 run function bucchi:18barrage/trap/center/level2/left/1_115
execute if score $Time Global matches 2..3 if score $Trap Global matches 1..35 run function bucchi:18barrage/trap/center/level2/left/2_105
execute if score $Time Global matches 3 as @e[tag=!Barrage,tag=Center2_2D,scores={Global=2}] run function bucchi:18barrage/trap/center/level2/left/15_117
execute if score $Time Global matches 4 if score $Trap Global matches 39 run function bucchi:18barrage/trap/center/end