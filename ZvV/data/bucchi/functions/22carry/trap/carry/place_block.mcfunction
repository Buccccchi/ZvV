spreadplayers ~ ~ 0 2 false @e[tag=Tmp]
scoreboard players set $Tmp Global 0
execute positioned as @e[tag=Tmp] positioned over world_surface if block ~ ~-2 ~ redstone_lamp run scoreboard players set $Tmp Global 1
execute positioned as @e[tag=Tmp] positioned over world_surface if entity @e[tag=Carry,distance=..0.5] run scoreboard players set $Tmp Global 1
execute if score $Tmp Global matches 1 run function bucchi:22carry/trap/carry/place_block