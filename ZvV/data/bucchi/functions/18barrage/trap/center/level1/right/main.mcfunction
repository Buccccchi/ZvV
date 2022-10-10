execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level1/right/1
execute if score $Time Global matches 3..13 store success score $Trap Global unless score $Trap Global matches 1
execute if score $Time Global matches 3..13 if score $Trap Global matches 1 run function bucchi:18barrage/trap/center/level1/right/3_13

execute if score $Time Global matches 19..33 store success score $Trap Global unless score $Trap Global matches 1
execute if score $Time Global matches 18..32 if score $Trap Global matches 1 run scoreboard players add @e[tag=!Barrage,tag=Center1_3] Global 1
execute if score $Time Global matches 18..30 if score $Trap Global matches 1 as @e[tag=Center1_3,scores={Global=8}] at @s run teleport @s ~ 65 ~
execute if score $Time Global matches 21..33 if score $Trap Global matches 0 run function bucchi:18barrage/trap/center/level1/right/21_33

execute positioned 0 66 -200 rotated as @e[tag=Axis2,limit=2] rotated ~90 0 positioned ^ ^ ^2 rotated as @e[tag=Axis2,limit=2] run particle minecraft:dust 5 5 5 1 ^ ^ ^2 0.2 0.2 0.2 0 30
execute as @e[tag=Axis2,tag=Right] at @s run teleport @s ~ ~ ~ ~4.5 0
execute as @e[tag=Axis2,tag=!Right] at @s run teleport @s ~ ~ ~ ~-4.5 0
execute if score $Time Global matches 33 run tag @e[tag=Axis2,tag=Right] remove Right

execute if score $Time Global matches 33 run function bucchi:18barrage/trap/center/end