scoreboard objectives remove corner
scoreboard objectives remove aim
scoreboard objectives remove follow
bossbar remove bucchi:level
setblock 0 66 -217 minecraft:stone
setblock 1 65 -214 minecraft:redstone_block
fill 1 65 -214 -1 65 -214 minecraft:stone
fill -13 63 -213 13 63 -187 minecraft:redstone_wire replace minecraft:redstone_wire

kill @e[tag=!dontkill]
scoreboard players reset * obj
fill 14 69 -202 14 69 -198 minecraft:redstone_block
fill -14 69 -202 -14 69 -198 minecraft:redstone_block