kill @e[tag=Center]
scoreboard players set $Time Global 0
scoreboard players set $Trap Global 0
scoreboard players set $Center Global 0
execute if score $Level Global matches 1 if score $Count Global matches 10 run function bucchi:18barrage/trap/center/level1/levelup
execute if score $Level Global matches 2 if score $Count Global matches 10 run function bucchi:18barrage/trap/center/level2/levelup
fill -5 65 -205 5 65 -195 minecraft:light_weighted_pressure_plate replace minecraft:cave_air