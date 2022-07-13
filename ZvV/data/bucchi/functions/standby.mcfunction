execute as @e[tag=standby] at @s run teleport @s ^ ^ ^1
execute as @e[tag=standby] at @s unless block ~ ~ ~ minecraft:air run teleport @s ^ ^ ^-1 ~180 0
scoreboard players remove $standby obj 1
execute if score $standby obj matches 0 run kill @e[tag=standby]