execute if score @s Health > @e[tag=Target,limit=1] Health run tag @s add Damage
execute if score @s Health < @e[tag=Target,limit=1] Health run tag @e[tag=Target] add Damage
scoreboard players operation @s Health < @e[tag=Target,limit=1] Health
scoreboard players operation @e[tag=Target,limit=1] Health < @s Health
scoreboard players add @e[tag=Damage] Health 100
execute as @e[tag=Damage] store result entity @s Health float 0.01 run scoreboard players get @s Health
effect give @e[tag=Damage] minecraft:wither 1 1 true
tag @e[tag=Damage] remove Damage