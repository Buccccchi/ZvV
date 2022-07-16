execute if score @s health > @e[tag=target,limit=1] health run tag @s add damage
execute if score @s health < @e[tag=target,limit=1] health run tag @e[tag=target] add damage
scoreboard players operation @s health < @e[tag=target,limit=1] health
scoreboard players operation @e[tag=target,limit=1] health < @s health
scoreboard players add @e[tag=damage] health 100
execute as @e[tag=damage] store result entity @s Health float 0.01 run scoreboard players get @s health
effect give @e[tag=damage] minecraft:wither 1 1 true
tag @e[tag=damage] remove damage