execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level1/left/1
execute if score $Time Global matches 5 run function bucchi:18barrage/trap/center/level1/left/1_41
execute if score $Time Global matches 3 as @e[tag=!Barrage,tag=Center1_2D,scores={Global=2}] run function bucchi:18barrage/trap/center/level1/left/11_43
execute if score $Time Global matches 4 if score $Trap Global matches 3..11 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $Time Global matches 4 if score $Trap Global matches 11 run function bucchi:18barrage/trap/center/end