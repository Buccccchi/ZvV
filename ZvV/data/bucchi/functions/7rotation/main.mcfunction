#矢
kill @e[type=minecraft:arrow,nbt={inGround: 1b}]
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end