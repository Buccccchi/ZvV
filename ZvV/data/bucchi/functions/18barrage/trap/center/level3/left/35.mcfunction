execute at @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^12.5 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^5.56 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^2.78 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ~ 62 ~ run summon minecraft:armor_stand ^ ^ ^1.39 {Tags:["center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute at @e[limit=2,tag=axis1] rotated ~-45 0 positioned ^ ^ ^12.5 rotated as @e[limit=2,tag=axis1] rotated ~-45 0 positioned ^ ^ ^5.56 rotated as @e[limit=2,tag=axis1] rotated ~-45 0 positioned ^ ^ ^2.78 rotated as @e[limit=2,tag=axis1] rotated ~-45 0 positioned ~ 62 ~ run summon minecraft:armor_stand ^ ^ ^1.39 {Tags:["center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute positioned as @e[tag=corner] run summon minecraft:armor_stand ~ 62 ~ {Tags:["center3_2C","center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute positioned as @e[tag=!barrage,tag=center3_2] run particle minecraft:enchanted_hit ~ 65.5 ~ 0 0 0 0.5 30 force

loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} at @e[tag=!barrage,tag=center3_2] run summon minecraft:armor_stand ~ 62 ~ {Tags:["right","center3_2B","center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:chorus_flower",Count:1b,tag:{Enchantments:[{}]}}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
#execute if predicate bucchi:random/50 positioned as @e[tag=!barrage,tag=center3_2] run summon minecraft:armor_stand ~ 62 ~ {Tags:["right","center3_2B","center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:chorus_flower",Count:1b,tag:{Enchantments:[{}]}}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute unless entity @e[tag=!barrage,tag=center3_2B] at @e[tag=!barrage,tag=center3_2] run summon minecraft:armor_stand ~ 62 ~ {Tags:["center3_2B","center3_2","position0_0","block"],ArmorItems:[{},{},{},{id:"minecraft:chorus_flower",Count:1b,tag:{Enchantments:[{}]}}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
execute as @e[tag=!barrage,tag=center3_2B] positioned as @s positioned ~ ~100 ~ facing 0 65 -200 positioned ^ ^ ^-5 run teleport @s ~ 65 ~ ~ ~
execute as @e[tag=!barrage,tag=center3_2,tag=!center3_2B] positioned as @s facing 0 62 -200 positioned ~ 65 ~ run teleport @s ^ ^ ^-0.7 ~ 0