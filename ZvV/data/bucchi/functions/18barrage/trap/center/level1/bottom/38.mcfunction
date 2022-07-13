execute at @e[tag=center1_1,tag=!straight0.5] run particle minecraft:firework ^-0.535 ^2 ^0.54 0 0 0 0.05 1 force
execute as @a positioned as @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 0.7 2
tag @e[tag=center1_1,tag=!straight0.5] add straight0.5
function bucchi:18barrage/trap/center/end