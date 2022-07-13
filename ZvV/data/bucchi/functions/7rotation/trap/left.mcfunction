scoreboard players remove $rotation obj 1
execute if score $rotation obj matches -1 run scoreboard players set $rotation obj 3
execute if score $rotation obj matches 0 run setblock 102 64 -12 minecraft:redstone_block
execute if score $rotation obj matches 1 run setblock 101 64 -12 minecraft:redstone_block
execute if score $rotation obj matches 2 run setblock 99 64 -12 minecraft:redstone_block
execute if score $rotation obj matches 3 run setblock 98 64 -12 minecraft:redstone_block