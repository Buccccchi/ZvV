execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level2/top/1
execute at @e[tag=P] positioned ~ 66 ~ run particle minecraft:enchanted_hit ^ ^ ^1.5 0 0 0 0.3 30 force
execute at @e[tag=P] run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["main","center2_4","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:tube_coral_block",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute as @e[tag=!barrage,tag=center2_4] positioned as @s positioned ~ ~30 ~ facing 0 65 -200 positioned as @s run teleport @s ~ 65 ~ ~ ~
tag @e[tag=!barrage,tag=center2_4] add barrage
execute as @e[tag=P] positioned as @s facing 0 62 -200 rotated ~-27 0 positioned 0 62 -200 positioned ^ ^ ^-2.5 rotated as @s run teleport @s ~ ~ ~ ~18 0