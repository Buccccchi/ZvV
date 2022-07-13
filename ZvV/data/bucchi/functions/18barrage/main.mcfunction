#追尾
execute if score $level obj matches 2 as @e[tag=corner] unless score @s aim matches 0..9 run scoreboard players set @s aim 20
execute if score $level obj matches 3 as @e[tag=corner] unless score @s aim matches 0..4 run scoreboard players set @s aim 20
execute as @e[tag=corner] if score @s aim matches 0..19 run scoreboard players add @s aim 1
#拡散
execute as @e[tag=corner] if score @s corner matches 0..9 run scoreboard players add @s corner 1
#ダメージ
execute as @e[tag=barrage,tag=position0_0] positioned as @s run function bucchi:18barrage/trap/damage
execute as @e[tag=barrage,tag=position0.76_0] positioned as @s positioned ^0.76 ^1.5 ^ run function bucchi:18barrage/trap/damage
execute as @e[tag=barrage,tag=position0_0.76] positioned as @s positioned ^ ^1.5 ^0.76 run function bucchi:18barrage/trap/damage
execute as @e[tag=barrage,tag=position-0.535_0.54] positioned as @s positioned ^-0.535 ^1.5 ^0.54 run function bucchi:18barrage/trap/damage
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end