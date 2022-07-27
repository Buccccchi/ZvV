tag @e[distance=0,tag=true,limit=1] add target
tag @s add alive
tag @e[tag=target] add alive
#線対称移動
execute rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run teleport @s ^ ^ ^1000
execute positioned ^ ^ ^-1 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned ^ ^ ^2000 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
#体力
execute unless score @s health = @e[tag=target,limit=1] health run function bucchi:20mirror/trap/mirror/health
#重複
execute if entity @s[distance=..0.5] unless score @s obj matches 1.. run function bucchi:20mirror/trap/mirror/overlap
#ジャンプ
execute unless block 200 65 -193 minecraft:heavy_weighted_pressure_plate[power=0] run function bucchi:20mirror/trap/mirror/jump

tag @e[tag=target] remove target