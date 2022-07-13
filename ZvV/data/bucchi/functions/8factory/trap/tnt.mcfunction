scoreboard players add $tnt obj 1
execute if score $tnt obj matches 1 run setblock 101 67 112 minecraft:redstone_block
execute if score $tnt obj matches 2 run setblock 100 67 112 minecraft:redstone_block
execute if score $tnt obj matches 3 run setblock 99 67 112 minecraft:redstone_block
execute if score $tnt obj matches 3 run summon minecraft:tnt_minecart 100 65 115