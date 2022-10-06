execute store success score $Direction Global unless score $Direction Global matches 1
fill 99 68 12 101 68 12 minecraft:black_concrete
execute if score $Direction Global matches 0 run setblock 101 68 12 minecraft:redstone_block
execute if score $Direction Global matches 1 run setblock 99 68 12 minecraft:redstone_block