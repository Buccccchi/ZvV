#中心の罠
scoreboard players operation $center obj = @e[limit=1,sort=random,tag=corner,scores={obj=1..}] obj
scoreboard players set @e[tag=corner] obj 0
execute if score $center obj matches 1.. run function bucchi:18barrage/trap/center/main
#加減速
execute as @e[tag=change,scores={obj=1..}] at @s run teleport @s ~ ~ ~ ~ ~-1
scoreboard players remove @e[tag=change,scores={obj=1..}] obj 1
#等速
execute as @e[tag=straight0.2] at @s run teleport @s ^ ^ ^0.2
execute as @e[tag=straight0.3] at @s run teleport @s ^ ^ ^0.3
execute as @e[tag=straight0.5] at @s run teleport @s ^ ^ ^0.5
execute as @e[tag=right0.3] at @s run teleport @s ^0.3 ^ ^
execute as @e[tag=left0.3] at @s run teleport @s ^-0.3 ^ ^
execute as @e[tag=scale3A] at @s positioned ^ ^ ^3 run teleport @s ~ 65 ~
execute as @e[tag=scale3B] at @s positioned ^ ^ ^3 run teleport @s ~ 65.5 ~
execute as @e[tag=scale3C] at @s positioned ^ ^ ^3 run teleport @s ~ 63.49 ~
execute as @e[tag=scale5] at @s positioned ^ ^ ^5 run teleport @s ~ 65 ~
#曲線
execute as @e[tag=curveA] positioned as @s positioned 0 80 -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 rotated ~2.7 ~ positioned ^ ^ ^30 rotated as @s run teleport @s ~ ~ ~ ~2.7 ~
execute as @e[tag=curveB] positioned as @s positioned 0 80 -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 rotated ~-2.7 ~ positioned ^ ^ ^30 rotated as @s run teleport @s ~ ~ ~ ~-2.7 ~
execute as @e[tag=curveC] positioned as @s positioned 0 80 -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 rotated ~1 ~ positioned ^ ^ ^30 rotated as @s run teleport @s ~ ~ ~ ~1 ~
execute as @e[tag=curveD] positioned as @s positioned 0 80 -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 positioned 0 ~ -200 facing entity @s feet positioned as @s positioned ^ ^ ^-30 rotated ~-1 ~ positioned ^ ^ ^30 rotated as @s run teleport @s ~ ~ ~ ~-1 ~
#反射
execute as @e[tag=reflect] at @s unless block ~ 66 ~ minecraft:air if block 0 66 ~ minecraft:air positioned ^ ^ ^-1 positioned ~ ~ ~-100 facing entity @s feet positioned ^ ^ ^200 positioned ~ ~ ~-100 facing entity @s feet positioned as @s run teleport @s ~ ~ ~ ~ 0
#kill
execute as @e[tag=barrage] positioned as @s if block ~ 64 ~ minecraft:air run kill @s