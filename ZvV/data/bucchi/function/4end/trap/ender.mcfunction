execute positioned as @e[type=minecraft:enderman] run scoreboard players set @e[type=minecraft:zombie,tag=!DontKill,scores={Global=1},nbt={OnGround: 1b},distance=2..] Global 0
execute as @e[type=minecraft:zombie,tag=!DontKill,scores={Global=2}] positioned as @s run teleport @s ~ ~4 ~
scoreboard players set @e[type=minecraft:zombie,tag=!DontKill,scores={Global=2}] Global 1