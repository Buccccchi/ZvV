effect give @s minecraft:instant_health 1 0 true
effect give @e[tag=target] minecraft:instant_health 1 0 true
execute positioned as @e[tag=target] run particle minecraft:heart ~ ~2 ~
scoreboard players set @s obj 20