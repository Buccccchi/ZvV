# 試合後の処理
fill 98 63 198 102 63 202 minecraft:dirt keep
fill 90 63 190 94 69 194 minecraft:air replace minecraft:gravel
setblock 90 63 190 minecraft:heavy_weighted_pressure_plate
## 基本処理
kill @e[tag=!DontKill]
scoreboard players reset * Global
fill 112 69 198 112 69 202 minecraft:redstone_block
fill 88 69 198 88 69 202 minecraft:redstone_block