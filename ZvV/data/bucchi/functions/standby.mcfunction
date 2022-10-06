execute as @e[tag=Standby] at @s run teleport @s ^ ^ ^1
execute as @e[tag=Standby] at @s unless block ~ ~ ~ minecraft:air run teleport @s ^ ^ ^-1 ~180 0
scoreboard players remove $Standby Global 1
execute if score $Standby Global matches 0 run kill @e[tag=Standby]