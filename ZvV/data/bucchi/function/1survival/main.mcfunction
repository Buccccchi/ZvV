#> bucchi:1survival/main
#
# サバイバルステージ
# 毎tick実行されるメイン処理
#
# @private

# かかしの矢
    # 畑内のゾンビに移動速度低下エフェクトを付与
        effect clear @e[type=minecraft:zombie] minecraft:slowness
        effect give @e[type=minecraft:zombie,x=5.5,y=65,z=90.5,dx=5,dy=2,dz=5] minecraft:slowness 1 1 true
    # 畑内にゾンビがいるかつかかしが召喚されている場合，10 ticks毎に矢を召喚
        execute if entity @e[type=minecraft:zombie,x=5.5,y=65,z=90.5,dx=5,dy=2,dz=5] if entity @e[tag=Kakashi] unless score $Kakashi Global matches 0..9 run scoreboard players set $Kakashi Global 0
        execute if score $Kakashi Global matches 0..9 run scoreboard players add $Kakashi Global 1
        execute if score $Kakashi Global matches 1 run function bucchi:1survival/trap/kakashi
    # 着弾した矢をkill
        kill @e[type=minecraft:arrow,nbt={inGround: 1b}]


# 自動バランス確認時に試合時間を計測
    execute if data storage global {Auto: 1b} run scoreboard players add $経過tick Count 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "1survival"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "1survival"}