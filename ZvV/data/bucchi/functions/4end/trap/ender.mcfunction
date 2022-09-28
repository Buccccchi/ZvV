execute positioned as @e[type=minecraft:enderman] run scoreboard players set @e[type=minecraft:zombie,tag=!dontkill,scores={obj=1},nbt={OnGround: 1b},distance=2..] obj 0
execute as @e[type=minecraft:zombie,tag=!dontkill,scores={obj=2}] positioned as @s run teleport @s ~ ~4 ~
scoreboard players set @e[type=minecraft:zombie,tag=!dontkill,scores={obj=2}] obj 1