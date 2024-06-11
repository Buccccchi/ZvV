# 左回転
## ステージ回転
scoreboard players remove $Rotation Global 1
execute if score $Rotation Global matches -1 run scoreboard players set $Rotation Global 3
execute if score $Rotation Global matches 0 run place template bucchi:7rotation 111 63 -11 clockwise_90
execute if score $Rotation Global matches 1 run place template bucchi:7rotation 111 63 11 180
execute if score $Rotation Global matches 2 run place template bucchi:7rotation 89 63 11 counterclockwise_90
execute if score $Rotation Global matches 3 run place template bucchi:7rotation 89 63 -11
## 炎回転
execute as @e[tag=Fire] positioned as @s positioned ~ 1065 ~ facing 100 65 0 positioned ^ ^ ^1000 rotated ~90 ~ positioned ^ ^ ^1000 positioned ~ 65 ~ align xz run teleport @s ~0.5 ~ ~0.5
execute positioned as @e[tag=RedFire ] run setblock ~ ~ ~ minecraft:fire
execute positioned as @e[tag=BlueFire] run setblock ~ ~ ~ minecraft:soul_fire