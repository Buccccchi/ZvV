# 下降
    setblock ~ ~ ~ quartz_pillar
    clone ~-2 ~ ~-2 ~2 ~2 ~2 ~-2 ~-1 ~-2 masked move
    execute unless block ~ 63 ~ redstone_lamp run setblock ~ ~-1 ~ command_block{Command: "/function bucchi:22carry/trap/lift/down"}

# 白ガラス
    execute if block ~-3 ~ ~ white_stained_glass if block ~-4 ~ ~ air run clone ~-3 ~ ~-2 ~-3 ~ ~2 ~-3 ~-1 ~-2 masked move
    execute if block ~3 ~ ~ white_stained_glass if block ~4 ~ ~ air run clone ~3 ~ ~-2 ~3 ~ ~2 ~3 ~-1 ~-2 masked move
    execute if block ~ ~ ~-3 white_stained_glass if block ~ ~ ~-4 air run clone ~-2 ~ ~-3 ~2 ~ ~-3 ~-2 ~-1 ~-3 masked move
    execute if block ~ ~ ~3 white_stained_glass if block ~ ~ ~4 air run clone ~-2 ~ ~3 ~2 ~ ~3 ~-2 ~-1 ~3 masked move

    execute if block ~-3 ~1 ~ white_stained_glass run clone ~-3 ~1 ~-2 ~-3 ~1 ~2 ~-3 ~ ~-2 masked move
    execute if block ~3 ~1 ~ white_stained_glass run clone ~3 ~1 ~-2 ~3 ~1 ~2 ~3 ~ ~-2 masked move
    execute if block ~ ~1 ~-3 white_stained_glass run clone ~-2 ~1 ~-3 ~2 ~1 ~-3 ~-2 ~ ~-3 masked move
    execute if block ~ ~1 ~3 white_stained_glass run clone ~-2 ~1 ~3 ~2 ~1 ~3 ~-2 ~ ~3 masked move

# 角の白ガラス
    execute if block ~-3 ~ ~-3 white_stained_glass positioned ~-3 ~ ~-3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~3 ~ ~-3 white_stained_glass positioned ~3 ~ ~-3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~-3 ~ ~3 white_stained_glass positioned ~-3 ~ ~3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~3 ~ ~3 white_stained_glass positioned ~3 ~ ~3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~-3 ~1 ~-3 white_stained_glass positioned ~-3 ~1 ~-3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~3 ~1 ~-3 white_stained_glass positioned ~3 ~1 ~-3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~-3 ~1 ~3 white_stained_glass positioned ~-3 ~1 ~3 run function bucchi:22carry/trap/lift/down_corner
    execute if block ~3 ~1 ~3 white_stained_glass positioned ~3 ~1 ~3 run function bucchi:22carry/trap/lift/down_corner

# 切り替え
    execute if block ~ 63 ~ redstone_lamp run setblock ~ ~-1 ~ command_block{Command: "/function bucchi:22carry/trap/lift/up"}
    execute if block ~ 63 ~ redstone_lamp run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 pearlescent_froglight replace verdant_froglight