execute if score $time obj matches 4 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level2/bottom/1
execute if score $time obj matches 4 unless score $trap obj matches 8 as @e[tag=P] at @s run function bucchi:18barrage/trap/center/level2/bottom/1_22
execute if score $time obj matches 4 unless score $trap obj matches 8 store success score $time obj run scoreboard players add $trap obj 1
execute if score $time obj matches 20 run function bucchi:18barrage/trap/center/level2/bottom/41