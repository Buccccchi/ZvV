# 試合後の処理

gamerule doFireTick false
fill -110 64 90 -90 70 110 minecraft:air replace #minecraft:fire
setblock -94 64 94 minecraft:heavy_weighted_pressure_plate
setblock -106 64 94 minecraft:heavy_weighted_pressure_plate
## 基本処理
kill @e[tag=!DontKill]
scoreboard players reset * Global
fill -88 69 98 -88 69 102 minecraft:redstone_block
fill -112 69 102 -112 69 98 minecraft:redstone_block