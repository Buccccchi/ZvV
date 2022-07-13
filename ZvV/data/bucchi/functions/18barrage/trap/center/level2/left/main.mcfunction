scoreboard players add @e[tag=!barrage,tag=center2_2_2] obj 1
execute as @e[tag=!barrage,tag=center2_2_2,scores={obj=9}] at @s run function bucchi:18barrage/trap/center/level2/left/10_114
execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level2/left/1
execute if score $time obj matches 4 if score $trap obj matches 5..39 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $time obj matches 4 unless score $trap obj matches 39 run function bucchi:18barrage/trap/center/level2/left/1_115
execute if score $time obj matches 2..3 if score $trap obj matches 1..35 run function bucchi:18barrage/trap/center/level2/left/2_105
execute if score $time obj matches 3 as @e[tag=!barrage,tag=center2_2D,scores={obj=2}] run function bucchi:18barrage/trap/center/level2/left/15_117
execute if score $time obj matches 4 if score $trap obj matches 39 run function bucchi:18barrage/trap/center/end