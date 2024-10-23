#> bucchi:9cave/stop
#
# 洞窟ステージ
# 試合後の処理
#
# @private

# 暗視エフェクトを付与
    tag @a remove NoNV

# 中央の穴を修復
    fill 98 54 198 102 66 210 minecraft:air replace minecraft:water
    fill 98 63 198 102 63 202 minecraft:dirt keep

# 砂利を修復
    fill 90 64 190 96 67 196 minecraft:air replace minecraft:gravel
    fill 90 64 192 90 65 192 minecraft:gravel
    setblock 92 66 190 minecraft:gravel
    setblock 92 62 192 minecraft:repeating_command_block{Command: "/execute if entity @e[type=minecraft:zombie,x=90,y=64,z=190,dx=6,dy=0,dz=6] run function bucchi:9cave/trap/gravel_fall"}
    setblock 92 64 192 minecraft:heavy_weighted_pressure_plate
    fill 90 60 190 96 63 196 minecraft:gravel keep
# 固有NBTを削除
    data remove storage minecraft:global GravelSink


# 基本処理
    # エンティティをkill
        kill @e[tag=!DontKill]
    # スコアをリセット
        scoreboard players reset * Global
    # ゲートを閉鎖
        fill 112 69 198 112 69 202 minecraft:redstone_block
        fill 88 69 198 88 69 202 minecraft:redstone_block