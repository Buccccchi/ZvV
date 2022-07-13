execute positioned as @s run summon minecraft:armor_stand ~ 62 ~ {Tags:["center3_2D","center3_2","position-0.535_0.54","arrow"],ArmorItems:[{},{},{},{id:"minecraft:arrow",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[90.0f,45.0f,0.0f]}}
loot replace block 0 16 0 container.0 loot bucchi:random/360
execute store result entity @e[limit=1,tag=!barrage,tag=center3_2D] Rotation[0] float 1 run data get block 0 16 0 Items[0].tag.AttributeModifiers[0].Amount 1
execute as @e[tag=!barrage,tag=center3_2D] at @s positioned ~ 63.49 ~ run teleport @s ^0.535 ^ ^-0.54 ~ 90
tag @e[tag=!barrage,tag=center3_2D] add barrage
execute if score $trap obj matches 19 run tag @s remove center3_2C