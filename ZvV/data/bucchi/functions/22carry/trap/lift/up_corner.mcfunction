# 上昇時の角の白ガラス
scoreboard players set $Tmp Global 0

execute if block ~-1 ~ ~ white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~1 ~ ~ white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~ ~ ~-1 white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~ ~ ~1 white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~-1 ~-1 ~ white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~1 ~-1 ~ white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~ ~-1 ~-1 white_stained_glass run scoreboard players add $Tmp Global 1
execute if block ~ ~-1 ~1 white_stained_glass run scoreboard players add $Tmp Global 1

execute if score $Tmp Global matches ..1 positioned ~ ~1 ~ align xyz as @e[dx=0,dy=0,dz=0] at @s run teleport @s ~ ~1 ~
execute if score $Tmp Global matches ..1 run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~ masked move