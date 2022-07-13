summon minecraft:armor_stand ~ ~ ~ {Tags:["center2_1","position-0.535_0.54","sword"],ArmorItems:[{},{},{},{id:"minecraft:golden_sword",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[90.0f,45.0f,0.0f]}}
execute if entity @s[tag=right] rotated ~45 ~ run teleport @e[tag=!barrage,tag=center2_1] ^0.535 ^1.49 ^-0.54 ~ ~
execute if entity @s[tag=!right] rotated ~-45 ~ run teleport @e[tag=!barrage,tag=center2_1] ^0.535 ^1.49 ^-0.54 ~ ~
tag @e[tag=!barrage,tag=center2_1] add barrage
execute facing 0 62 -200 positioned ^ ^ ^-0.5 rotated as @s run teleport @s ~ ~ ~ ~180 0