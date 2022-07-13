execute at @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^12.5 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^6 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ^ ^ ^3 rotated as @e[limit=2,tag=axis1] rotated ~45 0 positioned ~ 60 ~ run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["center3_2A","center3_2","position-0.535_0.54","arrow"],ArmorItems:[{},{},{},{id:"minecraft:spectral_arrow",Count:1b}],Invisible:1b,Marker:1b,NoBasePlate:1b,Fire:32767s,Pose:{Head:[90.0f,45.0f,0.0f]}}
execute positioned as @e[tag=!barrage,tag=center3_2A] run particle minecraft:flame ~ 65.5 ~ 0.3 0.3 0.3 0 30 force
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} run tag @e[tag=!barrage,tag=center3_2A] add right
#execute if predicate bucchi:random/50 run tag @e[tag=!barrage,tag=center3_2A] add right
execute as @e[tag=!barrage,tag=center3_2A,tag=right] positioned as @s facing entity @e[limit=1,sort=nearest,tag=axis1] feet run teleport @s ~ 62 ~ ~162 0
execute as @e[tag=!barrage,tag=center3_2A,tag=!right] positioned as @s facing entity @e[limit=1,sort=nearest,tag=axis1] feet run teleport @s ~ 62 ~ ~18 0
scoreboard players set @e[tag=!barrage,tag=center3_2A] obj 1