#移動開始
execute if entity @e[tag=main,tag=center3_4A,tag=curveA] run tag @e[tag=center3_4B,tag=!scale3B] add curveB
execute if entity @e[tag=main,tag=center3_4A,tag=curveB] run tag @e[tag=center3_4B,tag=!scale3B] add curveA
tag @e[tag=!main,tag=center3_4B,tag=!scale3B] add position0_0
tag @e[tag=!main,tag=center3_4B,tag=!scale3B] add scale3B
execute as @a positioned as @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2