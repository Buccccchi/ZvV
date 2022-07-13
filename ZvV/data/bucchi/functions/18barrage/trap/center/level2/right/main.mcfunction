execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level2/right/1
execute if score $time obj matches 3..38 store success score $trap obj unless score $trap obj matches 1
execute if score $time obj matches 3..13 if score $trap obj matches 1 run function bucchi:18barrage/trap/center/level2/right/3_13

execute if score $time obj matches 18..38 if score $trap obj matches 0 run scoreboard players add @e[tag=center2_3,scores={obj=..11}] obj 1
execute if score $time obj matches 18..30 if score $trap obj matches 0 as @e[tag=center2_3,scores={obj=8}] at @s run teleport @s ~ ~3 ~
execute if score $time obj matches 21..33 if score $trap obj matches 1 run function bucchi:18barrage/trap/center/level2/right/21_33
execute if score $time obj matches 26..38 if score $trap obj matches 0 run function bucchi:18barrage/trap/center/level2/right/26_38

execute positioned 0 66 -200 rotated as @e[limit=2,tag=axis2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis2] positioned ^ ^ ^1 facing 0 66 -200 positioned 0 66 -200 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis2] positioned ^ ^ ^1 facing 0 66 -200 positioned 0 66 -200 run particle minecraft:dust 5 5 5 1 ^ ^ ^2 0.2 0.2 0.2 0 10
execute as @e[tag=axis2,tag=right] at @s run teleport @s ~ ~ ~ ~2.25 0
execute as @e[tag=axis2,tag=!right] at @s run teleport @s ~ ~ ~ ~-2.25 0
execute if score $time obj matches 33 run tag @e[tag=axis2,tag=right] remove right

execute if score $time obj matches 38 run function bucchi:18barrage/trap/center/end