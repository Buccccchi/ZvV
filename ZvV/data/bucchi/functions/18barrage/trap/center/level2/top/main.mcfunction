execute if score $Time Global matches 1..40 run function bucchi:18barrage/trap/center/level2/top/1_40
execute if score $Time Global matches 4..43 unless score $Trap Global matches 1.. as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $Time Global matches 41 unless score $Trap Global matches 1.. at @e[tag=Main] run function bucchi:18barrage/trap/center/level2/top/41
execute if score $Time Global matches 57 as @e[tag=Center2_4,tag=Tear,tag=!Straight0.2] at @s run teleport @s ^ ^1.49 ^-0.76 ~ 0
execute if score $Time Global matches 57 as @e[tag=Center2_4,tag=Block,tag=!Scale5] at @s run teleport @s ~ 65 ~ ~ ~
execute if score $Time Global matches 60 run function bucchi:18barrage/trap/center/level2/top/60
execute if score $Time Global matches 77 as @e[tag=Center2_4,tag=Tear,tag=!Straight0.2] at @s run teleport @s ^ ^1.49 ^-0.76 ~ 0
execute if score $Time Global matches 80 run function bucchi:18barrage/trap/center/level2/top/80