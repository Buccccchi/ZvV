#> bucchi:7rotation/trap/direction
#
# 回転ステージ
# 回転方向変更
#
# @private

# 回転方向変更
    execute store success score $Direction Global unless score $Direction Global matches 1

# 回転方向表示
    fill 99 68 12 101 68 12 minecraft:black_concrete
    execute if score $Direction Global matches 0 run setblock 101 68 12 minecraft:redstone_block
    execute if score $Direction Global matches 1 run setblock 99 68 12 minecraft:redstone_block