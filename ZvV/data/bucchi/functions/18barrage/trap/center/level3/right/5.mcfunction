execute if entity @s[tag=P1] run scoreboard players set @e[tag=!barrage,tag=red] obj 0
execute if entity @s[tag=P2] run scoreboard players set @e[tag=!barrage,tag=orange] obj 0
execute if entity @s[tag=P3] run scoreboard players set @e[tag=!barrage,tag=yellow] obj 0
execute if entity @s[tag=P4] run scoreboard players set @e[tag=!barrage,tag=lime] obj 0
execute if entity @s[tag=P5] run scoreboard players set @e[tag=!barrage,tag=light_blue] obj 0
execute if entity @s[tag=P6] run scoreboard players set @e[tag=!barrage,tag=blue] obj 0
execute if entity @s[tag=P7] run scoreboard players set @e[tag=!barrage,tag=purple] obj 0
teleport @e[tag=center3_3,scores={obj=0}] ~ 65 ~
scoreboard players set @e[tag=center3_3,scores={obj=0}] obj 1
kill @s