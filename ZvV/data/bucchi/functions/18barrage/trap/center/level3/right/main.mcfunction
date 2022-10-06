execute if score $time Global matches 1 run function bucchi:18barrage/trap/center/level3/right/1a
execute if score $time Global matches 1..5 run function bucchi:18barrage/trap/center/level3/right/1_5
execute if score $time Global matches 5..8 if entity @e[tag=center3_3,scores={Global=3}] run function bucchi:18barrage/trap/center/level3/right/5_8
execute if score $time Global matches 5..22 as @e[tag=center3_3,tag=right,scores={Global=8..17}] at @s run teleport @s ~ ~ ~ ~9 ~
execute if score $time Global matches 5..22 as @e[tag=center3_3,tag=left,scores={Global=8..17}] at @s run teleport @s ~ ~ ~ ~-9 ~
execute if score $time Global matches 5..22 run scoreboard players add @e[tag=center3_3,scores={Global=1..17}] Global 1
execute if score $time Global matches 5 as @e[tag=center] positioned as @s if entity @s[y=45,dy=10] run function bucchi:18barrage/trap/center/level3/right/5
execute if score $time Global matches 5 if entity @e[tag=center] run scoreboard players set $time Global 4
execute if score $time Global matches 22 run function bucchi:18barrage/trap/center/end