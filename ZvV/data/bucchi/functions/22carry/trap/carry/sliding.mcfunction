teleport @s ^ ^ ^0.2
execute if entity @s[type=marker] positioned ~0.5 ~ ~0.5 as @e[type=!marker,type=!item_display,type=!falling_block,dx=0,dy=0,dz=0] positioned as @s run teleport @s ^ ^ ^0.2
#execute if entity @s[type=marker] positioned ^ ^ ^-0.45 if block ~ ~-1 ~ air run 