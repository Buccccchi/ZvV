execute if score $trap obj matches 1 run scoreboard players set $trapA obj 0
scoreboard players add @e[tag=!barrage,tag=center2_2_1] obj 1
tag @e[tag=!barrage,tag=center2_2C,scores={obj=2}] remove center2_2_1
tag @e[tag=!barrage,tag=center2_2C,scores={obj=2}] add straight0.5
tag @e[tag=!barrage,tag=center2_2C,scores={obj=2}] add barrage

execute if score $trap obj matches 36 run kill @e[tag=P1]
execute if score $trap obj matches 2..16 as @e[tag=P1] at @s run teleport @s ^ ^ ^-2.5
execute if score $trap obj matches 20..34 as @e[tag=P1] at @s run teleport @s ^ ^ ^2.5
execute positioned as @e[tag=P1] run summon minecraft:armor_stand ~ 62 ~ {Tags:["center2_2C","center2_2_1","position-0.535_0.54","arrow"],ArmorItems:[{},{},{},{id:"minecraft:spectral_arrow",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[90.0f,45.0f,0.0f]}}
execute positioned as @e[tag=P1] run summon minecraft:armor_stand ~ 62 ~ {Tags:["center2_2D","center2_2_1","position-0.535_0.54","arrow"],ArmorItems:[{},{},{},{id:"minecraft:spectral_arrow",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[90.0f,45.0f,0.0f]}}
execute at @e[tag=center2_2A] rotated ~90 0 as @e[limit=4,sort=nearest,tag=center2_2_1,distance=..3] unless score @s obj matches 1.. run teleport @s ^0.535 ^ ^-1 ~ 0
execute at @e[tag=center2_2B] rotated ~-90 0 as @e[limit=4,sort=nearest,tag=center2_2_1,distance=..3] unless score @s obj matches 1.. run teleport @s ^0.535 ^ ^-1 ~ 0