scoreboard players remove $Rotation Global 1
execute if score $Rotation Global matches -1 run scoreboard players set $Rotation Global 3
execute if score $Rotation Global matches 0 run place template bucchi:7rotation 111 63 -11 clockwise_90
execute if score $Rotation Global matches 1 run place template bucchi:7rotation 111 63 11 180
execute if score $Rotation Global matches 2 run place template bucchi:7rotation 89 63 11 counterclockwise_90
execute if score $Rotation Global matches 3 run place template bucchi:7rotation 89 63 -11