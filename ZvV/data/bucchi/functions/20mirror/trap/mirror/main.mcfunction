tag @e[distance=0,limit=1] add target
execute if entity @s[type=minecraft:zombie,nbt={OnGround: 0b},x=190,y=64,z=-210,dx=20,dy=0,dz=20] run teleport @e[tag=target] ~ ~-0.08 ~
#線対称移動
execute rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run teleport @s ^ ^ ^1000
execute positioned ^ ^ ^-1 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned ^ ^ ^2000 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
#重複
execute if entity @s[type=minecraft:zombie,distance=..0.5] run effect give @s minecraft:wither 1 0 true
#体力
execute store result score $trueHP obj run data get entity @e[tag=target,limit=1] Health 100
tag @e[tag=target] remove target