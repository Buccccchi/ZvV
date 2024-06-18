# エンドポータル
execute in the_end run kill @e[tag=!DontKill,x=98,y=49,z=-2,dx=4,dy=2,dz=4]
# エンダーマン
execute positioned as @e[type=minecraft:enderman] run scoreboard players set @e[type=minecraft:zombie,tag=!DontKill,scores={Global=0},distance=..1] Global 2
execute if entity @e[type=minecraft:zombie,tag=!DontKill,scores={Global=1..}] run function bucchi:4end/trap/ender
# 中心への台
execute unless entity @e[type=minecraft:end_crystal] run fill -98 63 -102 -102 63 -98 minecraft:redstone_block replace minecraft:stone
# 治癒の残留P
execute if block -100 65 -107 minecraft:air unless entity @e[tag=Potion1] run setblock -100 65 -107 minecraft:stone_pressure_plate
execute if block -100 65 -93 minecraft:air unless entity @e[tag=Potion2] run setblock -100 65 -93 minecraft:stone_pressure_plate
# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end