execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level1/left/1
execute if score $time obj matches 5 run function bucchi:18barrage/trap/center/level1/left/1_41
execute if score $time obj matches 3 as @e[tag=!barrage,tag=center1_2D,scores={obj=2}] run function bucchi:18barrage/trap/center/level1/left/11_43
execute if score $time obj matches 4 if score $trap obj matches 3..11 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $time obj matches 4 if score $trap obj matches 11 run function bucchi:18barrage/trap/center/end