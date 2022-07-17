execute if entity @s[type=minecraft:drowned] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=minecraft:drowned] run effect give @e[tag=target] minecraft:instant_damage 1 0 true
execute if entity @s[type=minecraft:villager] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[type=minecraft:villager] run effect give @e[tag=target] minecraft:instant_health 1 0 true
execute positioned as @e[tag=target] run particle minecraft:heart ~ ~2 ~
scoreboard players set @s obj 40