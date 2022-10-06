scoreboard players add $Rotation Global 1
execute if score $Rotation Global matches 4 run scoreboard players set $Rotation Global 0
execute if score $Rotation Global matches 0 run setblock 102 64 -12 minecraft:redstone_block
execute if score $Rotation Global matches 1 run setblock 101 64 -12 minecraft:redstone_block
execute if score $Rotation Global matches 2 run setblock 99 64 -12 minecraft:redstone_block
execute if score $Rotation Global matches 3 run setblock 98 64 -12 minecraft:redstone_block