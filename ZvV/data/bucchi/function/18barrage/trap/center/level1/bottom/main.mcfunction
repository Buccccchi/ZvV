execute if score $Time Global matches 4 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level1/bottom/1
execute if score $Time Global matches 4 unless score $Trap Global matches 7 as @e[tag=P] at @s run function bucchi:18barrage/trap/center/level1/bottom/1_19
execute if score $Time Global matches 4 unless score $Trap Global matches 7 store success score $Time Global run scoreboard players add $Trap Global 1
execute if score $Time Global matches 20 run function bucchi:18barrage/trap/center/level1/bottom/38