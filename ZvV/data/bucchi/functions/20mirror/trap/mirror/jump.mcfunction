execute if score @s Jump matches 2 if score @e[tag=Target,limit=1] Jump matches 0 run scoreboard players set @e[tag=Target] Jump 2
execute if score @s Jump matches 0 if score @e[tag=Target,limit=1] Jump matches 2 run scoreboard players set @s Jump 2
execute if score @s Jump matches 2 if score @e[tag=Target,limit=1] Jump matches 1 run scoreboard players set @s Jump 1
execute if score @s Jump matches 1 if score @e[tag=Target,limit=1] Jump matches 2 run scoreboard players set @e[tag=Target] Jump 1