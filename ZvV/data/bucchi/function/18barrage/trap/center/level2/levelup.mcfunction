scoreboard players set $Level Global 3
bossbar set bucchi:level color red
bossbar set bucchi:level name {"text": "Level 3", "color": "red"}
bossbar set bucchi:level style progress
setblock -1 65 -214 minecraft:redstone_block
execute as @a positioned as @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3 2
# 拡散準備
kill @e[tag=!Barrage,tag=CornerA]
tag @e[tag=CornerB] add CornerA