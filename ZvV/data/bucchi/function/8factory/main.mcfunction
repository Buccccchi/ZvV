#> bucchi:8factory/main
#
# 工場ステージ
# 毎tick実行されるメイン処理
#
# @private

# TNTトロッコ
    execute if entity @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] run fill 100 64 105 100 64 108 minecraft:air
    teleport @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] 100 65 106.0

# ベルトコンベア
    execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=east] run teleport @s ~0.1 ~ ~
    execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=west] run teleport @s ~-0.1 ~ ~
    execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=south] run teleport @s ~ ~ ~0.1
    execute as @e[type=!minecraft:villager] positioned as @s if block ~-0.5 ~-0.1 ~ minecraft:chain_command_block[facing=east] run teleport @s ~0.1 ~ ~
    execute as @e[type=!minecraft:villager] positioned as @s if block ~0.5 ~-0.1 ~ minecraft:chain_command_block[facing=west] run teleport @s ~-0.1 ~ ~

# 荷物
    execute positioned as @e[type=minecraft:chest_minecart] as @e[type=minecraft:zombie,distance=..1] positioned as @s run teleport @s ~ ~6 ~
    execute as @e[type=minecraft:chest_minecart] positioned as @s unless block ~ 64 ~ minecraft:chain_command_block run teleport @s ~ ~0.2 ~
    execute as @e[type=minecraft:chest_minecart] positioned as @s if block ~ ~ ~ minecraft:iron_block run kill @s
    kill @e[type=minecraft:zombie,tag=!DontKill,x=89,y=86,z=89,dx=22,dy=10,dz=22]

# 金床
    # 右
        execute if block 90 65 110 minecraft:stone_pressure_plate[powered=true] unless score $Anvil1 Global matches 0..59 run scoreboard players set $Anvil1 Global 0
        execute if score $Anvil1 Global matches 0..59 run scoreboard players add $Anvil1 Global 1
        execute if score $Anvil1 Global matches 1 run setblock 91 69 110 minecraft:anvil[facing=west]
        execute if score $Anvil1 Global matches 1 run setblock 90 69 109 minecraft:anvil[facing=north]
    # 左
        execute if block 110 65 110 minecraft:stone_pressure_plate[powered=true] unless score $Anvil2 Global matches 0..59 run scoreboard players set $Anvil2 Global 0
        execute if score $Anvil2 Global matches 0..59 run scoreboard players add $Anvil2 Global 1
        execute if score $Anvil2 Global matches 1 run setblock 109 69 110 minecraft:anvil[facing=west]
        execute if score $Anvil2 Global matches 1 run setblock 110 69 109 minecraft:anvil[facing=south]
    # 落下した金床を消去
        fill 90 65 109 110 65 110 minecraft:air replace #minecraft:anvil


# 自動バランス確認時に試合時間を計測
    execute if data storage global {Auto: 1b} run scoreboard players add $経過tick Count 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "8factory"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "8factory"}