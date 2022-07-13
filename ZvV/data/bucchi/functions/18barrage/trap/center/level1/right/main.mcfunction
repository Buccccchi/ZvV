execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level1/right/1
execute if score $time obj matches 3..13 store success score $trap obj unless score $trap obj matches 1
execute if score $time obj matches 3..13 if score $trap obj matches 1 run function bucchi:18barrage/trap/center/level1/right/3_13

execute if score $time obj matches 19..33 store success score $trap obj unless score $trap obj matches 1
execute if score $time obj matches 18..32 if score $trap obj matches 1 run scoreboard players add @e[tag=!barrage,tag=center1_3] obj 1
execute if score $time obj matches 18..30 if score $trap obj matches 1 as @e[tag=center1_3,scores={obj=8}] at @s run teleport @s ~ 65 ~
execute if score $time obj matches 21..33 if score $trap obj matches 0 run function bucchi:18barrage/trap/center/level1/right/21_33

execute positioned 0 66 -200 rotated as @e[limit=2,tag=axis2] rotated ~90 0 positioned ^ ^ ^2 rotated as @e[limit=2,tag=axis2] run particle minecraft:dust 5 5 5 1 ^ ^ ^2 0.2 0.2 0.2 0 30
execute as @e[tag=axis2,tag=right] at @s run teleport @s ~ ~ ~ ~4.5 0
execute as @e[tag=axis2,tag=!right] at @s run teleport @s ~ ~ ~ ~-4.5 0
execute if score $time obj matches 33 run tag @e[tag=axis2,tag=right] remove right

execute if score $time obj matches 33 run function bucchi:18barrage/trap/center/end