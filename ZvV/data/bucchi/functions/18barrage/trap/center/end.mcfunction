kill @e[tag=center]
scoreboard players set $time obj 0
scoreboard players set $trap obj 0
scoreboard players set $center obj 0
execute if score $level obj matches 1 if score $count obj matches 10 run function bucchi:18barrage/trap/center/level1/levelup
execute if score $level obj matches 2 if score $count obj matches 10 run function bucchi:18barrage/trap/center/level2/levelup
fill -5 65 -205 5 65 -195 minecraft:light_weighted_pressure_plate replace minecraft:cave_air