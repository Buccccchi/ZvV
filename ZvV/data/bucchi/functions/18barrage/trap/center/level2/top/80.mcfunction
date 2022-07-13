tag @e[tag=center2_4,tag=tear,tag=!straight0.2] add straight0.2
tag @e[tag=main] add scale5
tag @e[tag=main] remove main
execute as @a positioned as @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2
function bucchi:18barrage/trap/center/end