gamerule doFireTick false
fill 89 65 -11 111 65 11 minecraft:dispenser[facing=up] replace minecraft:dispenser
fill 99 68 12 101 68 12 minecraft:black_concrete
place template bucchi:7rotation 89 63 -11
fill 96 64 -4 95 64 -5 minecraft:lava

kill @e[tag=!DontKill]
scoreboard players reset * Global
fill 112 69 -2 112 69 2 minecraft:redstone_block
fill 88 69 -2 88 69 2 minecraft:redstone_block