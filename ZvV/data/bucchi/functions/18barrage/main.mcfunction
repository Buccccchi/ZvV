# 追尾
execute if score $Level Global matches 2 as @e[tag=Corner] unless score @s Aim matches 0..9 run scoreboard players set @s Aim 20
execute if score $Level Global matches 3 as @e[tag=Corner] unless score @s Aim matches 0..4 run scoreboard players set @s Aim 20
execute as @e[tag=Corner] if score @s Aim matches 0..19 run scoreboard players add @s Aim 1
# 拡散
execute as @e[tag=Corner] if score @s Corner matches 0..9 run scoreboard players add @s Corner 1
# ダメージ
execute as @e[tag=Barrage,tag=Position0_0] positioned as @s run function bucchi:18barrage/trap/damage
execute as @e[tag=Barrage,tag=Position0.76_0] positioned as @s positioned ^0.76 ^1.5 ^ run function bucchi:18barrage/trap/damage
execute as @e[tag=Barrage,tag=Position0_0.76] positioned as @s positioned ^ ^1.5 ^0.76 run function bucchi:18barrage/trap/damage
execute as @e[tag=Barrage,tag=Position-0.535_0.54] positioned as @s positioned ^-0.535 ^1.5 ^0.54 run function bucchi:18barrage/trap/damage
# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end