execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level2/right/1
execute if score $Time Global matches 3..38 store success score $Trap Global unless score $Trap Global matches 1
execute if score $Time Global matches 3..13 if score $Trap Global matches 1 run function bucchi:18barrage/trap/center/level2/right/3_13

execute if score $Time Global matches 18..38 if score $Trap Global matches 0 run scoreboard players add @e[tag=Center2_3,scores={Global=..11}] Global 1
execute if score $Time Global matches 18..30 if score $Trap Global matches 0 as @e[tag=Center2_3,scores={Global=8}] at @s run teleport @s ~ ~3 ~
execute if score $Time Global matches 21..33 if score $Trap Global matches 1 run function bucchi:18barrage/trap/center/level2/right/21_33
execute if score $Time Global matches 26..38 if score $Trap Global matches 0 run function bucchi:18barrage/trap/center/level2/right/26_38

execute positioned 0 66 -200 rotated as @e[tag=Axis2,limit=2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 66 -200 positioned 0 66 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 66 -200 positioned 0 66 -200 run particle minecraft:dust{color: [5.0, 5.0, 5.0], scale: 1.0} ^ ^ ^2 0.2 0.2 0.2 0 10
execute as @e[tag=Axis2,tag=Right] at @s run teleport @s ~ ~ ~ ~2.25 0
execute as @e[tag=Axis2,tag=!Right] at @s run teleport @s ~ ~ ~ ~-2.25 0
execute if score $Time Global matches 33 run tag @e[tag=Axis2,tag=Right] remove Right

execute if score $Time Global matches 38 run function bucchi:18barrage/trap/center/end