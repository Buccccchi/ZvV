execute if entity @s[tag=P1] run scoreboard players set @e[tag=!barrage,tag=red] Global 0
execute if entity @s[tag=P2] run scoreboard players set @e[tag=!barrage,tag=orange] Global 0
execute if entity @s[tag=P3] run scoreboard players set @e[tag=!barrage,tag=yellow] Global 0
execute if entity @s[tag=P4] run scoreboard players set @e[tag=!barrage,tag=lime] Global 0
execute if entity @s[tag=P5] run scoreboard players set @e[tag=!barrage,tag=light_blue] Global 0
execute if entity @s[tag=P6] run scoreboard players set @e[tag=!barrage,tag=blue] Global 0
execute if entity @s[tag=P7] run scoreboard players set @e[tag=!barrage,tag=purple] Global 0
teleport @e[tag=center3_3,scores={Global=0}] ~ 65 ~
scoreboard players set @e[tag=center3_3,scores={Global=0}] Global 1
kill @s