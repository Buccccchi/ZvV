execute if score @s jump matches 2 if score @e[tag=target,limit=1] jump matches 0 run scoreboard players set @e[tag=target] jump 2
execute if score @s jump matches 0 if score @e[tag=target,limit=1] jump matches 2 run scoreboard players set @s jump 2
execute if score @s jump matches 2 if score @e[tag=target,limit=1] jump matches 1 run scoreboard players set @s jump 1
execute if score @s jump matches 1 if score @e[tag=target,limit=1] jump matches 2 run scoreboard players set @e[tag=target] jump 1