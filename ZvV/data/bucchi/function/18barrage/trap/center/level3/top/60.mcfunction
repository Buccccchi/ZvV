# 移動開始
execute if entity @e[tag=Main,tag=Center3_4A,tag=CurveA] run tag @e[tag=Center3_4B,tag=!Scale3B] add CurveB
execute if entity @e[tag=Main,tag=Center3_4A,tag=CurveB] run tag @e[tag=Center3_4B,tag=!Scale3B] add CurveA
tag @e[tag=!Main,tag=Center3_4B,tag=!Scale3B] add Psosition0_0
tag @e[tag=!Main,tag=Center3_4B,tag=!Scale3B] add Scale3B
execute as @a positioned as @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2