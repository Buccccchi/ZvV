execute if score $time obj matches 1..50 run function bucchi:18barrage/trap/center/level3/top/1_50
execute if score $time obj matches 4..53 unless score $trap obj matches 1.. as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $time obj matches 51 unless score $trap obj matches 1.. as @e[tag=main] at @s run function bucchi:18barrage/trap/center/level3/top/51
execute if score $time obj matches 57 if score $trap obj matches 1.. as @e[tag=!main,tag=center3_4B,tag=!scale3B] at @s run teleport @s ~ 65.5 ~ ~ ~
execute if score $time obj matches 60 if score $trap obj matches 1.. run function bucchi:18barrage/trap/center/level3/top/60
execute if score $time obj matches 67 as @e[tag=!main,tag=center3_4A,tag=!scale5] at @s run teleport @s ~ ~ ~ ~ ~
execute if score $time obj matches 70 run function bucchi:18barrage/trap/center/level3/top/70
execute if score $time obj matches 80 run function bucchi:18barrage/trap/center/level3/top/80
execute if score $time obj matches 90 run function bucchi:18barrage/trap/center/level3/top/90