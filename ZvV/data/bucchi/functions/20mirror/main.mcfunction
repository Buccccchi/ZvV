#奈落
kill @e[tag=!dontkill,x=50,y=-16,z=-250,dx=100,dy=16,dz=100]
#体力
execute as @e[tag=fighter] store result score @s health run data get entity @s Health 100
#鏡
scoreboard players remove @e[tag=false,scores={obj=1..}] obj 1
execute if block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] if entity @e[tag=activate] run tag @e[tag=activate] remove activate
execute unless block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] unless entity @e[tag=activate] run function bucchi:20mirror/trap/mirror/change
execute as @e[tag=false] at @e[tag=true] if score @s id = @e[distance=0,limit=1] id run function bucchi:20mirror/trap/mirror/main
execute positioned as @e[tag=false] run particle minecraft:entity_effect ~ ~2 ~ 0 0 0 0 0
execute if entity @e[tag=false] positioned 200 66 -200 rotated as @e[tag=surface] positioned ^ ^ ^5 rotated as @e[tag=surface] positioned ^ ^ ^2.5 rotated as @e[tag=surface] positioned ^ ^ ^1.25 rotated as @e[tag=surface] positioned ^ ^ ^0.625 rotated as @e[tag=surface] positioned ^ ^ ^0.3125 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.5 0 0 1
#試合終了
execute store result score ゾンビ count if entity @e[type=minecraft:zombie,tag=true]
execute store result score 村人 count if entity @e[type=minecraft:villager,tag=true]
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end

scoreboard players reset @e[scores={health=2000}] health