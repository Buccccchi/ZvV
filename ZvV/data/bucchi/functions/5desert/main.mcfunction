#日光
execute store result score $sun obj run time query daytime
execute if score $sun obj matches 6002.. run time set midnight
execute if score $sun obj matches 18000.. run gamerule doDaylightCycle false
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end