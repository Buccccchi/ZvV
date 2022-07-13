fill -5 65 -205 5 65 -195 minecraft:cave_air replace minecraft:light_weighted_pressure_plate
execute if score $level obj matches 1..2 run scoreboard players add $count obj 1
execute if score $level obj matches 1..2 store result bossbar bucchi:level value run scoreboard players get $count obj