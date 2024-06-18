execute if score $Time Global matches 1 run function bucchi:18barrage/trap/center/level3/bottom/1
execute if score $Time Global matches 2 unless score $Trap Global matches 3 run scoreboard players add $Trap Global 1
execute if score $Time Global matches 2..4 if score $Trap Global matches 3 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $Time Global matches 2 as @e[tag=P] at @s run function bucchi:18barrage/trap/center/level3/bottom/2
execute if score $Time Global matches 2 if entity @e[tag=P] run scoreboard players set $Time Global 1
execute if score $Time Global matches 21 run function bucchi:18barrage/trap/center/level3/bottom/21