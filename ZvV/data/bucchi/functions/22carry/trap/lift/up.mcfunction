# 上昇
    setblock ~ ~ ~ quartz_pillar
    execute positioned ~-2 ~1 ~-2 align xyz as @e[dx=4,dy=1,dz=4] at @s run teleport @s ~ ~1 ~
    clone ~-2 ~ ~-2 ~2 ~2 ~2 ~-2 ~1 ~-2 masked move
    execute unless block ~ 67 ~ redstone_lamp run setblock ~ ~1 ~ command_block{Command: "/function bucchi:22carry/trap/lift/up"}

# 白ガラス
    execute if block ~-3 ~1 ~ white_stained_glass if block ~-4 ~1 ~ air positioned ~-3 ~2 ~-2 align xyz as @e[dx=0,dy=0,dz=4] at @s run teleport @s ~ ~1 ~
    execute if block ~-3 ~1 ~ white_stained_glass if block ~-4 ~1 ~ air run clone ~-3 ~1 ~-2 ~-3 ~1 ~2 ~-3 ~2 ~-2 masked move
    execute if block ~3 ~1 ~ white_stained_glass if block ~4 ~1 ~ air positioned ~3 ~2 ~-2 align xyz as @e[dx=0,dy=0,dz=4] at @s run teleport @s ~ ~1 ~
    execute if block ~3 ~1 ~ white_stained_glass if block ~4 ~1 ~ air run clone ~3 ~1 ~-2 ~3 ~1 ~2 ~3 ~2 ~-2 masked move
    execute if block ~ ~1 ~-3 white_stained_glass if block ~ ~1 ~-4 air positioned ~-2 ~2 ~-3 align xyz as @e[dx=4,dy=0,dz=0] at @s run teleport @s ~ ~1 ~
    execute if block ~ ~1 ~-3 white_stained_glass if block ~ ~1 ~-4 air run clone ~-2 ~1 ~-3 ~2 ~1 ~-3 ~-2 ~2 ~-3 masked move
    execute if block ~ ~1 ~3 white_stained_glass if block ~ ~1 ~4 air positioned ~-2 ~2 ~3 align xyz as @e[dx=4,dy=0,dz=0] at @s run teleport @s ~ ~1 ~
    execute if block ~ ~1 ~3 white_stained_glass if block ~ ~1 ~4 air run clone ~-2 ~1 ~3 ~2 ~1 ~3 ~-2 ~2 ~3 masked move

    execute if block ~-3 ~ ~ white_stained_glass if block ~-4 ~-1 ~ air positioned ~-3 ~1 ~-2 align xyz as @e[dx=0,dy=0,dz=4] at @s run teleport @s ~ ~1 ~
    execute if block ~-3 ~ ~ white_stained_glass if block ~-4 ~-1 ~ air run clone ~-3 ~ ~-2 ~-3 ~ ~2 ~-3 ~1 ~-2 masked move
    execute if block ~3 ~ ~ white_stained_glass if block ~4 ~-1 ~ air positioned ~3 ~1 ~-2 align xyz as @e[dx=0,dy=0,dz=4] at @s run teleport @s ~ ~1 ~
    execute if block ~3 ~ ~ white_stained_glass if block ~4 ~-1 ~ air run clone ~3 ~ ~-2 ~3 ~ ~2 ~3 ~1 ~-2 masked move
    execute if block ~ ~ ~-3 white_stained_glass if block ~ ~-1 ~-4 air positioned ~-2 ~1 ~-3 align xyz as @e[dx=4,dy=0,dz=0] at @s run teleport @s ~ ~1 ~
    execute if block ~ ~ ~-3 white_stained_glass if block ~ ~-1 ~-4 air run clone ~-2 ~ ~-3 ~2 ~ ~-3 ~-2 ~1 ~-3 masked move
    execute if block ~ ~ ~3 white_stained_glass if block ~ ~-1 ~4 air positioned ~-2 ~1 ~3 align xyz as @e[dx=4,dy=0,dz=0] at @s run teleport @s ~ ~1 ~
    execute if block ~ ~ ~3 white_stained_glass if block ~ ~-1 ~4 air run clone ~-2 ~ ~3 ~2 ~ ~3 ~-2 ~1 ~3 masked move

# 角の白ガラス
    execute if block ~-3 ~1 ~-3 white_stained_glass positioned ~-3 ~1 ~-3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~3 ~1 ~-3 white_stained_glass positioned ~3 ~1 ~-3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~-3 ~1 ~3 white_stained_glass positioned ~-3 ~1 ~3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~3 ~1 ~3 white_stained_glass positioned ~3 ~1 ~3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~-3 ~ ~-3 white_stained_glass positioned ~-3 ~ ~-3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~3 ~ ~-3 white_stained_glass positioned ~3 ~ ~-3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~-3 ~ ~3 white_stained_glass positioned ~-3 ~ ~3 run function bucchi:22carry/trap/lift/up_corner
    execute if block ~3 ~ ~3 white_stained_glass positioned ~3 ~ ~3 run function bucchi:22carry/trap/lift/up_corner

# 切り替え
    execute if block ~ 67 ~ redstone_lamp run setblock ~ ~1 ~ command_block{Command: "/function bucchi:22carry/trap/lift/down"}
    execute if block ~ 67 ~ redstone_lamp run fill ~-1 ~1 ~-1 ~1 ~1 ~1 verdant_froglight replace pearlescent_froglight