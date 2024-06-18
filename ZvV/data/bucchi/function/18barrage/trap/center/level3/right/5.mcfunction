execute if entity @s[tag=P1] run scoreboard players set @e[tag=!Barrage,tag=Red] Global 0
execute if entity @s[tag=P2] run scoreboard players set @e[tag=!Barrage,tag=Orange] Global 0
execute if entity @s[tag=P3] run scoreboard players set @e[tag=!Barrage,tag=Yellow] Global 0
execute if entity @s[tag=P4] run scoreboard players set @e[tag=!Barrage,tag=Lime] Global 0
execute if entity @s[tag=P5] run scoreboard players set @e[tag=!Barrage,tag=LightBlue] Global 0
execute if entity @s[tag=P6] run scoreboard players set @e[tag=!Barrage,tag=Blue] Global 0
execute if entity @s[tag=P7] run scoreboard players set @e[tag=!Barrage,tag=Purple] Global 0
teleport @e[tag=Center3_3,scores={Global=0}] ~ 65 ~
scoreboard players set @e[tag=Center3_3,scores={Global=0}] Global 1
kill @s