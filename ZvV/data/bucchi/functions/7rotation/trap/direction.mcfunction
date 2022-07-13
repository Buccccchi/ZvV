execute store success score $direction obj unless score $direction obj matches 1
fill 99 68 12 101 68 12 minecraft:black_concrete
execute if score $direction obj matches 0 run setblock 101 68 12 minecraft:redstone_block
execute if score $direction obj matches 1 run setblock 99 68 12 minecraft:redstone_block